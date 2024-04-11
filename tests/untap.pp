package { 'homebrew/versions':
  ensure   => absent,
  provider => tap,
}

package { ['nginx-full', 'redis2-nginx-module']:
  ensure   => absent,
  provider => brew,
}

package { 'denji/nginx':
  ensure   => absent,
  provider => tap,
}
