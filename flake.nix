{
  description = "Laravel Dev Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { nixpkgs, ... }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [
        pkgs.php84
        pkgs.php84Packages.composer
        pkgs.postgresql
        pkgs.mariadb
        pkgs.nodejs_22
        pkgs.openssl
      ];

      shellHook = ''
        export PATH=$PATH:./vendor/bin
        echo "✅ Laravel dev shell ready (PHP 8.4, Composer, Node 22)"
      '';
    };
  };
}
