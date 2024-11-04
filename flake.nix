{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }: let
    forEachSystem = fn: nixpkgs.lib.genAttrs
      [ "x86_64-linux" "aarch64-linux" ]
      (system: fn system nixpkgs.legacyPackages.${system});
  in {
    packages = forEachSystem (system: pkgs: rec {
      tree-sitter-qmljs = pkgs.callPackage ./tree-sitter-qmljs.nix {};
      qml-ts-mode = pkgs.emacsPackages.callPackage ./qml-ts-mode.nix {};
    });
  };
}
