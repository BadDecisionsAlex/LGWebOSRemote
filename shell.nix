{ pkgs ? import <nixpkgs> {
    overlays = [ ( import ./.nixpkgs/overlay.nix ) ];
  }
, stdenv ? ( import <nixpkgs> {} ).stdenv
}:
let

in
  stdenv.mkDerivation {

    name = "lg-webos-remote-env";

    buildInputs = ( with pkgs.python37Packages; [
      wakeonlan
      ws4py
      #lg-webos-remote
    ] ) ++ ( with pkgs; [
      lg-webos-remote
      nodejs-10_x
    ] );

    shellHook = ''
      alias pip="PIP_PREFIX='$(pwd)/_build/pip_packages' \pip"
      export PYTHONPATH="$(pwd)/_build/pip_packages/lib/python3.7/site-packages:$PYTHONPATH"
      unset SOURCE_DATE_EPOCH
    '';

  }
