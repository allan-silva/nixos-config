{ config, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.wget
    pkgs.curl
    pkgs.git
    pkgs.vscode
    pkgs.docker
    pkgs.docker-compose
    pkgs.python3
    pkgs.python38Packages.virtualenv
    pkgs.nixpkgs-fmt
    pkgs.postman
    pkgs.openjdk11
    pkgs.maven
  ];

  # Docker service
  virtualisation.docker.enable = true;
}
