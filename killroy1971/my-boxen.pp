# Define the dotfile source repository
class people::killroy1971::my-boxen {
 $the_boxendir="${::boxen_repodir}/modules/people/manifests"

  file { "${::boxen_srcdir}/killroy1971.pp":
     ensure => link,
     target  => "${the_boxendir}/killroy1971.pp",
  }

  file { "${::boxen_srcdir}/killroy1971":
     ensure => link,
     target  => "${the_boxendir}/killroy1971",
  }

  file { "${::boxen_srcdir}/manifests":
     ensure => link,
     target  => "${the_boxendir}",
  }
}
