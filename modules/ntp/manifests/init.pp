class ntp {

    package { 'ntp':
        ensure => present,
    }

    file { 'ntp.conf':
        path    => '/etc/ntp.conf',
        ensure  => file,
        require => Package['ntp'],
        source  => 'puppet:///modules/ntp/ntp.conf',
    }

    service { 'ntp':
        name      => 'ntp',
        ensure    => running,
        enable    => true,
        subscribe => File['ntp.conf'],
    }

}