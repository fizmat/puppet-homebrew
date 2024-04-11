Package <| provider == tap |> -> Package <| provider == homebrew |>

package { 'denji/nginx':
  ensure   => present,
  provider => tap,
}

package { 'nginx-full':
  ensure   => present,
  provider => brew,
}
