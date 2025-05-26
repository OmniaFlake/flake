{config, pkgs, unstable_stable, lib, ...}:
{
  users.users.omnia = {
    isNormalUser = true;
    description = "omnia";
    extraGroups = [ "networkmanager" "ydotool" "wheel"];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };
  users.defaultUserShell = pkgs.zsh;
  networking.hostName = "flake"; # Define your hostname.


}

