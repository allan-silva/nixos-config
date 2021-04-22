self: super:
let
  pkgs = import <nixpkgs> { };
in
{
  mylocals = {
    alacarte = pkgs.callPackage ./gnome/alacarte { }; # WIP
  };
}
