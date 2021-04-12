{ config, pkgs, ... }:

{ environment.systemPackages = [
    pkgs.wget
    pkgs.curl
    pkgs.git
    pkgs.vscode
    pkgs.virtualbox
  ];
}
