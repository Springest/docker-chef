module ChefSpec::API
  module AptRepositoryMatchers
    ChefSpec::Runner.define_runner_method :apt_repository

    def add_apt_repository(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:apt_repository, :add, resource_name)
    end
  end
end
