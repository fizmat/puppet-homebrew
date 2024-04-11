package { 'ack':
  ensure   => latest,
  provider => brew,
}

package { 'rar':
  ensure   => latest,
  provider => brew,
}

package { 'nano':
  ensure   => latest,
  provider => brew,
}
