package { 'ack':
  ensure   => present,
  provider => brew,
}

package { 'rar':
  ensure   => present,
  provider => brew,
}

package { 'nano':
  ensure   => present,
  provider => brew,
}
