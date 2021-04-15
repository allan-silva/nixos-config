{ config, pkgs, ... }:

{

  environment.systemPackages = [
    pkgs.firefox
    pkgs.gnome3.gnome-tweak-tool
    pkgs.terminator
    pkgs.libreoffice-fresh
    pkgs.spotify
    pkgs.zip
    pkgs.unzip
  ];
}
