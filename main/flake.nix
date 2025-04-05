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
  };
  outputs = {nixpkgs, unstablenixpkgs, ...} @ inputs: 
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {inherit inputs;};
        modules = [
          ./configuration.nix
          ./hardware-configuration.nix
        ];
      };
    };
}
