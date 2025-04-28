{pkgs, lib, ...}:

{
  imports = 
  [
    ./hyprland.nix
    ./fonts.nix
    ./starship.nix
    ./fish.nix
    ./graphics.nix
    ./ssh.nix
    ./steam.nix
  ];

}
