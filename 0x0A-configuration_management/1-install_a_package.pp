# install a package using Puppet

package { 'puppet-lint':
  ensure   => '2.1.0',
  provider => 'gem',
}
