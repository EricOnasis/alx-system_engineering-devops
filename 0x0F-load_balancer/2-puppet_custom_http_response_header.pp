# Custom HTTP header with Puppet

# Update ubuntu sources
exec { 'update server':
  command  => 'apt-get update',
  user     => 'root',
  provider => 'shell',
}
->
# Install nginx web server
package { 'nginx':
  ensure   => present,
  provider => 'apt'
}
->
# Set custom Nginx response header
file_line { 'add HTTP header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;'
}
->
# Start nginx service
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx']
}
