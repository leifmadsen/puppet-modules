class openssh::config {
	file { 'sshd_config':
		name	=> $openssh::params::configfile,
		mode	=> $openssh::params::configfile_mode,
		owner	=> $openssh::params::configfile_owner,
		group	=> $openssh::params::configfile_group,
		ensure	=> present,
		source	=> 'puppet:///modules/openssh/sshd_config',
		require => Class['openssh::install'],
		notify	=> Class['openssh::service'],
	}
}