{
  description = "My Flake System Configurations";
  inputs = {
    unstablenixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    veryoldnixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
    nvf.url = "github:OmniaFlake/nvf";
    mytmux_helper.url  = "github:OmniaFlake/mytmux_helper";

    
  };
  outputs = {
    nixpkgs,
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
      	inherit inputs;
      };
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
      ];
    };
  };
}
