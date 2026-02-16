{
  description = "Generate README";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      lib = pkgs.lib;
      readme = import ./default.nix { inherit lib pkgs; };
    in
    {
      apps.${system}.default = {
        type = "app";
        program = "${pkgs.writeShellScript "gen-readme" ''
          set -e
          cp ${readme} ./README.md
          echo "✅ README.md generated successfully."
        ''}";
      };
    };
}
