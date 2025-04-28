{config, pkgs, unstable_stable, lib, ...}:
{
  users.users.omnia = {
    isNormalUser = true;
    description = "omnia";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    shell = pkgs.fish;
  };
  users.defaultUserShell = pkgs.fish;
  networking.hostName = "flake"; # Define your hostname.


}

