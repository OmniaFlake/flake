{config, unstable_pkgs, pkgs, lib, ...}:
{
  imports = [
    ./user.nix
    ./boot.nix
  ];
  nix.settings.experimental-features = ["nix-command" "flakes"];
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
 # Enable networking
  networking.networkmanager.enable = true;
  # Set your time zone.
  time.timeZone = "Asia/Kathmandu";
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
 
}

