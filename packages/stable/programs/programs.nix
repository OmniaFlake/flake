{pkgs, lib, ...}:

{
  imports = 
  [
    ./hyprland.nix
    ./fonts.nix
    ./fish.nix
    ./graphics.nix
    ./ssh.nix
    ./steam.nix
  ];

}
