Package <| provider == tap |> -> Package <| provider == homebrew |>

# TODO?: create a small tap specifically for testing

package { 'homebrew-ffmpeg/ffmpeg':
  ensure   => present,
  provider => tap,
}

package { 'homebrew-ffmpeg/ffmpeg/ffmpeg':
  ensure          => present,
  provider        => brew,
  install_options => [
    '--with-srt',
  ],
}
