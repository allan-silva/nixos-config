{ config, pkgs, ... }:

{ imports = [
  /home/allan.silva/nixos-config/systemwide.nix
  /home/allan.silva/nixos-config/common.nix
  /home/allan.silva/nixos-config/development.nix
  ];
}
