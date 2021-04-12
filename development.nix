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
    pkgs.python37
    pkgs.python37Packages.virtualenv
    pkgs.pkgs.nixpkgs-fmt
  ];

  # Docker service
  virtualisation.docker.enable = true;
}
