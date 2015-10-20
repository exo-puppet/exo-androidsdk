class androidsdk::update {
  # Install crontab to update the SDK
  cron { 'update-android-sdk':
    ensure  => present,
    command => "${androidsdk::license_acceptor_dir}/license_acceptor /opt/android-sdk-linux_x86/tools/android --silent update sdk --no-ui --all --force > /dev/null 2> /dev/null",
    user    => 'root',
    hour    => 0,
    minute  => 0,
    weekday => 0,
  }
}
