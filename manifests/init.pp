class androidsdk (
  $install_dir    = '/opt/android-sdk-linux_x86',
  $android_binary = '/tools/android',
  $license_acceptor_dir = '/opt/android-sdk-licenseacceptor',
) {
  include androidsdk::packages, androidsdk::install, androidsdk::update
}
