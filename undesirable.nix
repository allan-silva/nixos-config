{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.google-chrome
    pkgs.fuse
    pkgs.appimage-run
    pkgs.appimagekit
    pkgs.bash
  ];
}
