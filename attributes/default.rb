# platform
if platform_family?("windows")
  default.sensu.admin_user = "Administrator"
  default.sensu.directory = 'C:\etc\sensu'
  default.sensu.log_directory = 'C:\var\log\sensu'
  default.sensu.windows.dism_source = nil
  default.sensu.windows.package_options = nil
else
  default.sensu.admin_user = "root"
  default.sensu.user = "sensu"
  default.sensu.group = "sensu"
  default.sensu.directory = "/etc/sensu"
  default.sensu.log_directory = "/var/log/sensu"
end

# installation
default.sensu.version = "0.16.0-1"
default.sensu.use_unstable_repo = false
default.sensu.log_level = "info"
default.sensu.use_ssl = true
default.sensu.use_embedded_ruby = false
default.sensu.init_style = "sysv"
default.sensu.service_max_wait = 10
default.sensu.directory_mode = "0750"
default.sensu.log_directory_mode = "0750"

default.sensu.apt_repo_url = "http://repos.sensuapp.org/apt"
default.sensu.yum_repo_url = "http://repos.sensuapp.org"
default.sensu.msi_repo_url = "http://repos.sensuapp.org/msi"

# rabbitmq
default.sensu.rabbitmq.host = "localhost"
default.sensu.rabbitmq.port = 5671
default.sensu.rabbitmq.vhost = "/sensu"
default.sensu.rabbitmq.user = "sensu"
default.sensu.rabbitmq.password = "password"

# redis
default.sensu.redis.host = "localhost"
default.sensu.redis.port = 6379

# api
default.sensu.api.host = "localhost"
default.sensu.api.bind = "0.0.0.0"
default.sensu.api.port = 4567

#data_bag
default['sensu']['data_bag_name'] = "sensu"
default['sensu']['ssl_data_bag_key'] = 'ssl'
default['sensu']['config_data_bag_key'] = 'config'
default['sensu']['enterprise_data_bag_key'] = 'enterprise'
default['sensu']['server_data_bag_key'] = 'server'
default['sensu']['client_data_bag_key'] = 'client'
default['sensu']['api_data_bag_key'] = 'api'
