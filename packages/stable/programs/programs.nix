{pkgs, lib, ...}:

{
  imports = 
  [
    ./hyprland.nix
    ./fonts.nix
    ./starship.nix
    ./shell.nix
    ./graphics.nix
    ./ssh.nix
    ./steam.nix
    ./xwayland.nix 
  ];

}
