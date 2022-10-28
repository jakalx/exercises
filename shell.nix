{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [
    (haskell.packages.ghc8107.ghcWithPackages (p:
      with p; [
        doctest
        ghcid
        haskell-language-server
        hedgehog
        hedgehog-classes
        hlint
        hoogle
        hspec
        hspec-hedgehog
        ormolu
        silently
      ]))
    cabal-install
  ];
  shellHook = "";
}
