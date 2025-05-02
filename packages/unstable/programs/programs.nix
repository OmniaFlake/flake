{config, unstable_pkgs, lib, ...}:
{
  imports = 
  [
    ./git.nix
    ./nh.nix
    ./sway.nix
  ];
}
