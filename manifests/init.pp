# @summary Grafana Agent init class
class grafana_agent (
  String $package_name,
  String $package_ensure,
  String $service_name,
  String $service_ensure,
  String $config_path,
  Hash $config_hash,
) {
  include grafana_agent::install
  include grafana_agent::config
  include grafana_agent::service
}
