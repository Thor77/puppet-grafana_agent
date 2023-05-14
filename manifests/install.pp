# @summary Manage Grafana Agent package installation
class grafana_agent::install {
  package { $grafana_agent::package_name:
    ensure => $grafana_agent::package_ensure,
  }
}
