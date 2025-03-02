{
  description = "Facilitate the hugo binary for local development/testing with a server";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let 
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShell.${system} = pkgs.mkShell {
      buildInputs = with pkgs; [
        hugo
      ];
    };
  };
}
