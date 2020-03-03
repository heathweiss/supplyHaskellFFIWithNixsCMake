with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "supplyHaskellFFIWithCMake-0.0.3";
  src = ./.  ;

  nativeBuildInputs = [ cmake ];

  

  installPhase = ''
    mkdir -p $out/bin;
    cp hello-cmake-world $out/bin/;
    #cp $src/src/Message.h $out/bin/;
    mkdir -p $out/lib
    cp libmessage.so $out/lib/;
  '';
}
