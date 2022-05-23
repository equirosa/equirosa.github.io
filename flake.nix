{
  description = "Kiri's Blog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    supportedSystems = ["x86_64-linux"];

    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

    nixpkgsFor = forAllSystems (system: import nixpkgs {inherit system;});
  in {
    devShell = forAllSystems (
      system: let
        pkgs = nixpkgsFor.${system};
      in
        pkgs.mkShell
        {
          buildInputs = with pkgs; [
            zola
            (writeShellApplication {
              name = "new";
              text = ''
                DATE="$(date -u +"%Y-%m-%d")"
                TITLE="''${1//\ /-}"
                FILENAME="''${DATE}-''${TITLE}.md"
                case $PWD in
                *blog ) "''${EDITOR:-nvim}" "''${FILENAME}" ;;
                *) echo "no" ;;
                esac
              '';
            })
          ];
        }
    );
  };
}
