name             'phpbrew'
maintainer       'Etki'
maintainer_email 'etki@etki.name'
license          'MIT'
description      'Installs phpbrew'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ubuntu debian}.each do |os|
  supports os
end
