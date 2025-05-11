{
  description = "x-web | Laravel boilerplate";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/0c0bf9c057382d5f6f63d54fd61f1abd5e1c2f63";
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
        pkgs.glibcLocales
      ];

      shellHook = ''
        export PATH=$PATH:./vendor/bin
        echo "✅ Laravel dev shell ready (PHP 8.4, Composer, Node 22)"
      '';
    };
  };
}
