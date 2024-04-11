Package <| provider == tap |> -> Package <| provider == homebrew |>

package { 'davidchall/hep':
  ensure   => present,
  provider => tap,
}

package { 'f2c':
  ensure   => present,
  provider => homebrew,
}
