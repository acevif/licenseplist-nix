{
  pkgs,
  stdenv,
  lib,
  unzip,
  versionId,
  platforms,
}:

let
  sources = pkgs.callPackage ./_sources/generated.nix { };
  source = sources."licenseplist-${versionId}-darwin";
in
stdenv.mkDerivation {
  pname = "licenseplist";
  inherit (source) version src;

  nativeBuildInputs = [ unzip ];

  sourceRoot = ".";

  installPhase = ''
    runHook preInstall

    mkdir -p "$out/bin"
    install -m755 license-plist "$out/bin/license-plist"

    if [ -f LICENSE ]; then
      mkdir -p "$out/share/licenses/licenseplist"
      install -m644 LICENSE "$out/share/licenses/licenseplist/LICENSE"
    fi

    runHook postInstall
  '';

  meta = with lib; {
    description = "A command-line tool that generates a plist of dependency licenses";
    homepage = "https://github.com/mono0926/LicensePlist";
    license = licenses.mit;
    inherit platforms;
    mainProgram = "license-plist";
    sourceProvenance = with sourceTypes; [ binaryNativeCode ];
  };
}
