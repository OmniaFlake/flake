{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" "amdgpu"];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    open = false;  # GTX 1650 Ti is not supported by open driver
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}

