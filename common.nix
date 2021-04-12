{ config, pkgs, ...}:

{ 

environment.systemPackages = [
    pkgs.firefox
    pkgs.gnome3.gnome-tweak-tool
    pkgs.terminator
  ];
}
