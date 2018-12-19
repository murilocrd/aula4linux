class arraia_negra{

	package{"apache2":
		ensure => absent,
		require => Service["apache2"]
	}

	service{"apache2":
		ensure => stopped,
	}

        package{"nginx":
                ensure => present,
               #require => Package["nginx"]
        }

        service{"nginx":
                ensure => running,
		enable => true,
        }



}
