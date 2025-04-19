
{pkgs, lib, ...}:
{
  hardware.graphics = {
    enable = true;
    
    # Intel-specific packages
    extraPackages = with pkgs; [
      intel-media-driver  # VAAPI driver
      intel-compute-runtime  # OpenCL runtime
      vaapiIntel  # VAAPI support
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

}

