with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "supplyHaskellFFIWithCMake-0.0.3";
  src = ./.  ;

  nativeBuildInputs = [ cmake ];

  

  installPhase = ''
  
    mkdir -p $out/bin;
    cp hello-cmake-world $out/bin/;
    install -D libmessage.so $out/lib/libmessage.so
    #mkdir -p $out/lib
    mkdir $out/include
    cp libmessage.so $out/include
    #cp -r $src/include/* $out/include
  '';
}
