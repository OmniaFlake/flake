{pkgs, lib, ...}:
{
  imports = 
  [
    ./xdg.nix
    ./greeter.nix
    ./openssh.nix
    ./xserver.nix
    ./flatpak.nix
  ];
}

