class savanna::params {

  case $::osfamily {
    'RedHat': {
      # package names
      $savanna_package_name           = 'openstack-savanna-virtualenv-savanna'
      $savanna_dashboard_package_name = 'savanna-dashboard'
      # service names
      $savanna_service_name           = 'openstack-savanna-api'
    }
    'Debian': {
      # package names
      $savanna_package_name           = 'openstack-savanna-virtualenv-savanna'
      $savanna_dashboard_package_name = 'savanna-dashboard'
      # service names
      $savanna_service_name           = 'openstack-savanna-api'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: \
${::operatingsystem}, module ${module_name} only support osfamily \
RedHat")
    }
  }
}
