{ config, pkgs, ...}:

{ 
nixpkgs.config.allowUnfree = true;

environment.systemPackages = [
    pkgs.firefox
    pkgs.gnome3.gnome-tweak-tool
    pkgs.terminator
  ];
}
