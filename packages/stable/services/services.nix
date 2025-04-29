{pkgs, lib, ...}:
{
  imports = 
  [
    ./xdg.nix
    ./greeter.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}

