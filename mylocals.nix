{ config, pkgs, ... }:
{
  environment.systemPackages = [
    # pkgs.mylocals.alacarte # WIP
    pkgs.mylocals.offsetexplorer
    # pkgs.mylocals.nosqlbooster4
  ];
}
