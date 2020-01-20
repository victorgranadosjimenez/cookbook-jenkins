apt_update "update" do
  action :update
end
package "python3-dev" do
  action :install
end

package "python3-pip" do
  action :install
end

remote_directory '/home/ubuntu/app' do
  source 'app'
  action :create
end

package "python-software-properties" do
  action :install
end

cookbook_file '/home/ubuntu/app/requirements.txt' do
  source 'app/requirements.txt'
  action :create
end


execute "pip3 install requirements" do
  command "pip3 install -r /home/ubuntu/app/requirements.txt"
  action :run
end
directory '/home/vagrant/Downloads' do
  action :create
end
file '/home/vagrant/Downloads/ItJobsWatchTop30.csv' do
  action :create
  mode '777'
end
