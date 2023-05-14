# @summary Manage Grafana Agent service
class grafana_agent::service {
  service { $grafana_agent::service_name:
    ensure    => $grafana_agent::service_ensure,
    enable    => $grafana_agent::service_ensure == 'running',
    require   => Package[$grafana_agent::package_name],
    subscribe => File[$grafana_agent::config_path],
  }
}
