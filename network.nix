{ config, pkgs, ... }:
{
  networking.enableIPv6 = false;
  services.dhcpd6.enable = false;
  boot.kernel.sysctl."net.ipv6.conf.eth0.disable_ipv6" = true;

  networking.nameservers = [ "8.8.8.8" "8.8.4.4" ];
}
