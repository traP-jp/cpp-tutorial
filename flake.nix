{
  description = "Practical Modern C++(WIP)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          name = "cpp-tutorial";
          packages = with pkgs; [ mdbook ];
        };
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "cpp-tutorial";
          version = "0.1.0";
          src = ./.;
          buildInputs = with pkgs; [ mdbook ];
          buildPhase = ''
            mdbook build
          '';
          installPhase = ''
            mkdir -p $out
            mv book $out/book
          '';
        };
      }
    );
}
