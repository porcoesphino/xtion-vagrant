class apt_update {
  exec { "aptGetUpdate":
    command => "sudo apt-get update",
    path => ["/bin", "/usr/bin"]
  }
}

class othertools {

  package { "git":
    ensure => latest,
    require => Exec["aptGetUpdate"]
  }

  package { "vim-common":
    ensure => latest,
    require => Exec["aptGetUpdate"]
  }
  
  package { "vim":
    ensure => latest,
    require => Exec["aptGetUpdate"]
  }

  package { "curl":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }

  package { "wget":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }

  package { "htop":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }

  package { "g++":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }
  
  package { "xorg":
    ensure => "installed",
    require => Exec["aptGetUpdate"]
  }
  
  package { "emacs":
    ensure => "installed",
    require => Exec["aptGetUpdate"]
  }
  
  package { "meld":
    ensure => "installed",
    require => Exec["aptGetUpdate"]
  }
  
  package { "colordiff":
    ensure => "installed",
    require => Exec["aptGetUpdate"]
  }
  
  package { "bash-completion":
    ensure => "installed",
    require => Exec["aptGetUpdate"]
  }
}

include apt_update
include othertools
