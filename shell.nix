{ nixpkgs ? fetchTarball "https://github.com/NixOS/nixpkgs/archive/bba3474a5798b5a3a87e10102d1a55f19ec3fca5.tar.gz"
, pkgs ? (import nixpkgs {}).pkgsCross.aarch64-multiplatform
}:

pkgs.pkgsStatic.callPackage ({ mkShell, pkg-config, file }: mkShell {
  nativeBuildInputs = [ pkg-config file ];
}) {}
