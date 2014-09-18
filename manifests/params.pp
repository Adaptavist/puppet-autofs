# Class: autofs::params
#
# This class defines default parameters used by the main module class autofs
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to autofs class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class autofs::params {

  ### Application related parameters
  $autoconf_server = 'nfs.adaptavist.com'
  $package = $::operatingsystem ? {
    default => 'autofs',
  }

  $service = $::operatingsystem ? {
    default => 'autofs',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'automount',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'root',
  }

  $config_dir = $::operatingsystem ? {
    default => '',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/auto.master',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/autofs',
    default                   => '/etc/sysconfig/autofs',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/autofs.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '',
  }

  $log_dir = $::operatingsystem ? {
    default => '',
  }

  $log_file = $::operatingsystem ? {
    default => '',
  }

  $port = ''
  $protocol = 'tcp'

  $idmap_service = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => 'idmapd',
    default                   => 'rpcidmapd',
  }

  $idmap_nobody_group = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => 'nogroup',
    default                   => 'nobody',
  }
 
  
  $idmap_pipefs_dir = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/run/rpc_pipefs',
    default                   => '/var/lib/nfs/rpc_pipefs/',
  }

  $idmap_nobody_user = 'nobody'
  $idmap_verbosity = '0'
  $idmap_translation_method = 'nsswitch'
  $nfsv4_domain = undef
 
  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = undef

}
