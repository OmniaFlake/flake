{pkgs, lib, ...}:

{
  imports = 
  [
    ./hyprland.nix
    ./fonts.nix
    ./graphics.nix
    ./ssh.nix
    ./steam.nix
  ];

}
