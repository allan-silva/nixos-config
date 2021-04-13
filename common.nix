{ config, pkgs, ... }:

{

  environment.systemPackages = [
    pkgs.firefox
    pkgs.gnome3.gnome-tweak-tool
    pkgs.terminator
    pkgs.libreoffice-fresh
    pkgs.fuse
    pkgs.appimage-run
    pkgs.appimagekit
    pkgs.bash
  ];
}
