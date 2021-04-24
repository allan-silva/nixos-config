{ fetchurl, appimageTools, ... }:
let
  pname = "nosqlbooster";
  version = "4.7.5";
  name = "${pname}4mongo-${version}";

  src = fetchurl {
    url = "https://s3.mongobooster.com/download/releasesv4/${name}.AppImage";
    sha256 = "14bp97w5vabvj8qpki9ivawv1sij5yvxmchpsvrfy2vzfgr6fid9";
  };

  appimageContents = appimageTools.extractType2 {
    inherit name src;
  };
in
appimageTools.wrapType2 rec {
  inherit name src;

  multiPkgs = null; # no 32bit needed
  extraPkgs = appimageTools.defaultFhsEnvArgs.multiPkgs;

  extraInstallCommands = ''
    mkdir -p $out/share/application

    mv $out/bin/{${name},${pname}}

    cp ${appimageContents}/nosqlbooster4mongo.desktop $out/share/application
    cp ${appimageContents}/nosqlbooster4mongo.png $out/share/icons

    substituteInPlace $out/share/applications/browserx.desktop --replace 'Exec=AppRun' 'Exec=${pname}'
  '';
}


# https://s3.mongobooster.com/download/releasesv4/${pname}4mongo-${version}.AppImage
