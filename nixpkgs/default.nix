self: super:
let
  pkgs = import <nixpkgs> { };
in
{
  mylocals = {
    alacarte = pkgs.callPackage ./gnome/alacarte { };
    offsetexplorer = pkgs.callPackage ./offsetexplorer { };
    nosqlbooster4 = pkgs.callPackage ./nosqlbooster { };
  };
}
