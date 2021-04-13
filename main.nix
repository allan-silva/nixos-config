{ config, pkgs, ... }:

{
  imports = [
    /home/allan.silva/nixos-config/systemwide.nix
    /home/allan.silva/nixos-config/common.nix
    /home/allan.silva/nixos-config/development.nix
    /home/allan.silva/nixos-config/network.nix
    /home/allan.silva/nixos-config/undesirable.nix
    /home/allan.silva/nixos-config/current_company.nix # Create file the current_company.nix to holds company sensitive data, but not push to repo
  ];
}
