{ nixpkgs, ... }:

{
  imports = [
    ./systemwide.nix
    ./common.nix
    ./development.nix
    ./network.nix
    ./undesirable.nix
    ./mylocals.nix
    ./current_company.nix # Create file the current_company.nix to holds company sensitive data, but not push to repo
  ];

  nixpkgs.overlays = [
    (import ./nixpkgs/default.nix)
  ];
}
