with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "supplyHaskellFFIWithCMake-0.0.4";
  src = ./.  ;

  nativeBuildInputs = [ cmake ];

  

  installPhase = ''
  
    mkdir -p $out/bin;
    cp supplyHaskellFFIWithCMake $out/bin/;

    #mkdir -p $out/lib
    #install -D libmessage.so $out/lib/
    #install -D message.h $out/lib/
    #install -D Message.h $out/lib/Message.h
    #mkdir -p $out/lib
    #mkdir $out/include
    #mkdir $out/include
    #install -D libmessage.so $out/include/libmessage.so
    #install -D src/message.h $out/include/Message.h
    #cp libmessage.so $out/include
    #cp libmessage.so include
    #cp -r $src/include/* $out/include
  '';
}
