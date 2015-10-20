class androidsdk::install {
  file { "${androidsdk::license_acceptor_dir}" :
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => 755;
  } ->
  file { "${androidsdk::license_acceptor_dir}/license_acceptor" :
    ensure  => present,
    source  => 'puppet:///modules/androidsdk/license_acceptor',
    owner   => root,
    group   => root,
    mode    => 744;
  }

  warning("Android sdk installation not yet implemented")
}
