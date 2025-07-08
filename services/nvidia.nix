{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = ["nvidia" "amdgpu"];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    open = false;  # GTX 1650 Ti is not supported by open driver
    nvidiaSettings = true;
    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;
      nvidiaBusId = "PCI:5:0:0";
      amdgpuBusId = "PCI:1:0:0";
    };
  };
}

