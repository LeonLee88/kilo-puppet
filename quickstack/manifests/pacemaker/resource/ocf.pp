define quickstack::pacemaker::resource::ocf($group='',
                                                $clone=false,
                                                $interval='30s',
                                                $monitor_params=undef,
                                                $ensure='present',
                                                $options='',
                                                $resource_name='') {
  include quickstack::pacemaker::params

  if has_interface_with("ipaddress", map_params("cluster_control_ip")){
    ::pacemaker::resource::ocf{ "$name":
                                group          => $group,
                                clone          => $clone,
                                interval       => $interval,
                                monitor_params => $monitor_params,
                                ensure         => $ensure,
                                options        => $options,
                                resource_name  => $resource_name,}
  }
}
