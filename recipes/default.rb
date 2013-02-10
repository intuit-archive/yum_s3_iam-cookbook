
package "yum-s3-iam" do
  version node['yum_s3_iam']['version']
end

template File.join('/', 'etc', 'yum.repos.d', 's3-iam.repo') do
  owner 'root'
  group 'root'
  mode '0644'
  source 's3-iam.repo.erb'
  variables :repo_bucket => node['yum_s3_iam']['repo_bucket'],
            :region => node['intu_metadata']['stack']['region']
end
