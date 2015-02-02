name             "yum_s3_iam"
maintainer       "Intuit, Inc."
maintainer_email "richard_mendes@intuit.com"
license          "Apache 2.0"
description      "Installs/Configures the yum-s3-iam plugin"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.0"

%w{ centos rhel }.each do |os|
  supports os
end

depends "yum"
