#!/usr/bin/pup

# Install Flask using Puppet

package { 'werkzeug':
  ensure   => '1.0.1',  # Use a version that is compatible with Flask 2.1.0
  provider => 'pip3',
}
<<<<<<< HEAD
=======

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
>>>>>>> 480b7b0 (Fix)
