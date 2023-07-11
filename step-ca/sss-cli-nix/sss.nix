with import <nixpkgs> {};


rustPlatform.buildRustPackage {
    pname = "shamirsecretsharing-cli";
    version = "0.1";

    src = fetchFromGitHub {
      owner = "dsprenkels";
      repo = "sss-cli";
      rev = "v0.1.1";
      hash = "sha256-9Wht+t48SsWpj1z2yY6P7G+h9StmuqfMdODtyPffhak=";
    };

    cargoHash = "sha256-dPQYvLx7rmjq1DI01seaLhI+bWhCSVSozpDH8/J1v+k=";
  
    cargoPatches = [
    # a patch file to add/update Cargo.lock in the source code
    ./updated-lock.patch
    ];

    meta = with lib; {
      description = "This tool allows for securely splitting and recombining secrets using a secure implementation of the Shamir secret sharing scheme.";
      homepage = "https://github.com/dsprenkels/sss-cli";
      license = licenses.mit;
    };
  }
