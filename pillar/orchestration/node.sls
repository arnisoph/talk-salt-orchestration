repos:
  lookup:
    repos:
      node:
        #url: https://rpm.nodesource.com/pub/el/7/x86_64/
        url: https://deb.nodesource.com/node_0.12
        comps:
          - main
        keyurl: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
        #keyurl: https://rpm.nodesource.com/pub/el/NODESOURCE-GPG-SIGNING-KEY-EL
    #node_src:
    #    url: https://rpm.nodesource.com/pub/el/7/SRPMS

mine_functions:
  network_ip_addrs:
    mine_function: network.ip_addrs
    interface: eth0
