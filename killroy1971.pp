class people::killroy1971 {
  include people::killroy1971::applications
  include people::killroy1971::dotfiles
  include people::killroy1971::my-boxen
}

$my_homedir = "/Users/$::luser"
