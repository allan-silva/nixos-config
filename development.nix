{ config, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.wget
    pkgs.curl
    pkgs.git
    pkgs.vscode
    pkgs.virtualbox
    pkgs.docker
    pkgs.docker-compose
    pkgs.python3
    pkgs.python38Packages.virtualenv
    pkgs.pkgs.nixpkgs-fmt
  ];

  # Docker service
  virtualisation.docker.enable = true;
}
