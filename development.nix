{ config, pkgs, ... }:

{ environment.systemPackages = [
    pkgs.vscode
    pkgs.jetbrains.idea-community
  ];
}
