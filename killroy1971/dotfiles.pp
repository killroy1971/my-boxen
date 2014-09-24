# Define the dotfile source repository
class people::killroy1971::dotfiles {
 $my_homedir="/Users/$::luser"
 $my_dotfiles="/Users/$::luser/Dropbox/Projects/dotfiles"

  file { "${my_homedir}/.bashrc":
    ensure  => file,
    mode    => '0644',
    owner   => $::luser,
    group   => "staff",
    source  => "${my_dotfiles}/bashrc",
  }

  file { "${my_homedir}/.bash_profile":
    ensure  => file,
    mode    => '0644',
    owner   => $::luser,
    group   => "staff",
    source  => "${my_dotfiles}/bash_profile",
  }

  file { "${my_homedir}/.vimrc":
    ensure => file,
    mode   => '0644',
    owner   => $::luser,
    group   => "staff",
    source => "${my_dotfiles}/vimrc",
  }

  file { "${my_homedir}/.gvimrc":
    ensure => file,
    mode   => '0644',
    owner   => $::luser,
    group   => "staff",
    source => "${my_dotfiles}/gvimrc",
  }

  file { "${my_homedir}/.todo.cfg":
    ensure => file,
    mode   => '0644',
    owner   => $::luser,
    group   => "staff",
    source => "${my_dotfiles}/todo.cfg",
  }

  file { "${my_homedir}/.vim":
     ensure => link,
     target  => "${my_dotfiles}/vim",
  }

}
