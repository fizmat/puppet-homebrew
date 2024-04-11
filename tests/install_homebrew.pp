package { 'ack':
  ensure   => present,
  provider => homebrew,
}

package { 'rar':
  ensure   => present,
  provider => homebrew,
}

package { 'nano':
  ensure   => present,
  provider => homebrew,
}
