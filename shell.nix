let
    nixpkgs = import <nixpkgs> { };
in
with nixpkgs;
mkShell {
    packages = [
        git
        hugo
    ];
}
