{ fetchurl
# , docbook_xml_dtd_42
# , docbook_xml_xslt
, glib
, gnome-menus
, intltool
# , libxslt
, pkg-config
, python3
, python3Packages
, gnome3
, stdenv
}:
# python3Packages.buildPythonApplication
stdenv.mkDerivation rec {
  pname = "alacarte";
  version = "3.36";
  patch = "0";
  src = fetchurl {
    url = "https://download.gnome.org/sources/${pname}/${version}/${pname}-${version}.${patch}.tar.xz";
    sha256 = "5c1e09a8926ac77a049b199c97ac459f98a65816041feb392c839a91edc8e75d";
  };

  configureFlags = [
    "--enable-documentation=no"
  ];

  configureScript = "./configure --enable-documentation=no";

  # prePatch = ''
  #   substituteInPlace Makefile.in \
  #       --replace 'DIST_SUBDIRS = data po Alacarte man' 'DIST_SUBDIRS = data Alacarte'
  #       echo ------------------------------------------------------
  #   cat Makefile.in | grep DIST_SUBDIRS
  #   echo ------------------------------------------------------
  # '';

  buildInputs = [
    # docbook_xml_dtd_42
    # docbook_xml_xslt
    glib
    gnome-menus
    intltool
    # libxslt
    python3
    python3Packages.pygobject3
    pkg-config
  ];

  strictDeps = false; # https://github.com/NixOS/nixpkgs/issues/56943

  passthru = {
    updateScript = gnome3.updateScript {
      packageName = pname;
      attrPath = "gnome3.${pname}";
    };
  };
}
