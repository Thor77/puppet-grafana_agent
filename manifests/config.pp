# @summary Manage Grafana Agent config
class grafana_agent::config {
  file { $grafana_agent::config_path:
    content => to_yaml($grafana_agent::config_hash),
  }
}
