{ stdenv, fetchurl, openjdk }:
stdenv.mkDerivation rec {

  name = "offsetexplorer";
  pname = "offsetexplorer";

  src = fetchurl {
    url = "https://www.kafkatool.com/download2/${pname}.sh";
    sha256 = "1rmcdypikzkdinvfj7dlvqqjl3nbq73bsd9vvg3g5b2cwx8495nc";
  };

  buildInputs = [ openjdk ];

  unpackCmd = ''
    mkdir src $out $out/share
    cp $curSrc src/offsetexplorer.sh
  '';

  dontBuild = true;

  installPhase = ''
    sh ${pname}.sh -q -dir $out

    runHook postInstall
  '';

  postInstall = ''
    mkdir -p $out/share/applications
    cp $out/Offset\ Explorer\ 2.0.desktop $out/share/applications
  '';
}
