{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [
    (haskell.packages.ghc8107.ghcWithPackages (p:
      with p; [
        hspec
        hspec-hedgehog
        hedgehog
        hedgehog-classes
        doctest
        silently
        haskell-language-server
        ormolu
        hlint
        ghcid
      ]))
    cabal-install
  ];
  shellHook = "";
}
