Package <| provider == tap |> -> Package <| provider == homebrew |>

package { 'homebrew-ffmpeg/ffmpeg':
  ensure   => present,
  provider => tap,
}

package { 'homebrew-ffmpeg/ffmpeg/ffmpeg':
  ensure   => present,
  provider => brew,
}
