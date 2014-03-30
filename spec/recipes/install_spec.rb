require 'spec_helper'

describe "docker::install" do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['kernel']['release'] = kernel_release
    end.converge( described_recipe )
  end

  let(:kernel_release) { "3.11.0-12-generic" }

  it "should install the AUFS support" do
    expect( chef_run ).to install_package "linux-image-extra-#{kernel_release}"
  end

  it "should add the docker apt repo" do
    expect( chef_run ).to add_apt_repository( "docker" ).with({
      uri: "http://get.docker.io/ubuntu",
      components: [ "docker", "main" ],
      keyserver: "keyserver.ubuntu.com",
      key: "36A1D7869245C8950F966E92D8576A8BA88D21E9"
    })
  end

  it "should run apt-get update after adding the repo" do
    resource = chef_run.apt_repository( "docker" )
    expect( resource ).to notify("execute[apt-get-update]").to(:run).immediately
  end

  it "should install the lxc-docker package" do
    expect( chef_run ).to install_package "lxc-docker"
  end
end
