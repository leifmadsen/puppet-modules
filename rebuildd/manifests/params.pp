class rebuildd::params {
	$configdir = $operatingsystem ? {
		default => '/etc/rebuildd',
	}

	$configfile = $operatingsystem ? {
		default => '/etc/rebuildd/rebuilddrc',
	}

	$configfile_group = $operatingsystem ? {
		default => 'root',
	}

	$configfile_mode = $operatingsystem ? {
		default => '644',
	}

	$configfile_owner = $operatingsystem ? {
		default => 'root',
	}

	$customconfigdir = $operatingsystem ? {
		default => "$configdir/puppet.d",
	}

	$defaultsfile = $operatingsystem ? {
		default => '/etc/default/rebuildd',
	}

	$hasstatus = $operatingsystem ? {
		default => false,
	}

	$packagename = $operatingsystem ? {
		default => 'rebuildd',
	}

	$processname = $operatingsystem ? {
		default => 'rebuildd',
	}

	$servicename = $operatingsystem ? {
		default => 'rebuildd',
	}
}
