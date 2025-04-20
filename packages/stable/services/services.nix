{pkgs, lib, ...}:
{
  imports = 
  [
    ./xdg.nix
    ./greetd.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}

