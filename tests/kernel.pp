
freebsd::kernel {
  "firewall":
    options => [
      "ipsec",
      "altq",
      "altq_cbq",
      "altq_red",
      "altq_rio",
      "altq_hsfc",
      "altq_priq",
      "altq_nopcc",
    ],
    devices => [
      'crypto',
      'pf',
      'pflog',
      'pfsync',
    ]
}

#file_line { 'set option ipsec':
#  path    => '/root/kernels/FIREWALL',
#  line    => 'options IPSEC',
#  require => Exec["copy generic kernel to firewall"],
#}

#file_line { 'set device crypto':
#  path    => '/root/kernels/FIREWALL',
#  line    => 'device crypto  # needed to compile IPSEC support.',
#  require => Exec["copy generic kernel to firewall"],
#}
#
#file_line { 'set device pf':
#  path    => '/root/kernels/FIREWALL',
#  line    => 'device pf',
#  require => Exec["copy generic kernel to firewall"],
#}
#
#file_line { 'set device pflog':
#  path    => '/root/kernels/FIREWALL',
#  line    => 'device pflog',
#  require => Exec["copy generic kernel to firewall"],
#}
#
#file_line { 'set device pfsync':
#  path    => '/root/kernels/FIREWALL',
#  line    => 'device pfsync',
#  require => Exec["copy generic kernel to firewall"],
#}
