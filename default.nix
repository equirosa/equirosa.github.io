with import <nixpkgs> {};
mkShell {
  nativeBuildInputs = [
    bashInteractive
  ];
  buildInputs = [ zola ];
}
