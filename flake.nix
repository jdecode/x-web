{ pkgs ? import <nixpkgs> {} }:

let
  php = pkgs.php84;
in

pkgs.mkShell {
  buildInputs = [
    php
    pkgs.php84Packages.composer
    pkgs.mariadb
    pkgs.postgresql
    pkgs.nodejs_22
    pkgs.openssl
  ];

  shellHook = ''
    export PATH=$PATH:./vendor/bin
  '';
}

