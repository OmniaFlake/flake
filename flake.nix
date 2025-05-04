{
  description = "A very basic flake";
  inputs = {
    unstablenixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-24.11";
    };
    veryoldnixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-23.11";
    };
    nvf.url = "github:notashelf/nvf";
  };
  outputs = {
    nixpkgs,
    nvf,
    veryoldnixpkgs,
    unstablenixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    old_pkgs = import veryoldnixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    unstable_pkgs = import unstablenixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations.flake = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit pkgs;
        inherit unstable_pkgs;
        inherit old_pkgs;
      };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
      ];
    };
  };
}
