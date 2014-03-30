name             'docker'
maintainer       'Springest'
maintainer_email 'developers@springest.com'
license          'All rights reserved'
description      'Installs/Configures docker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          'apt'

recipe "docker",           "Includes recipes for a default install/configuration."
recipe "docker::install",  "Installs Docker through an apt package."

%w[ubuntu debian].each do |os|
  supports os
end

