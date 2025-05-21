{pkgs, inputs, lib, ...}:
{
  environment.systemPackages = [
    inputs.mytmux_helper.packages.${pkgs.system}.default
    inputs.nvf.packages.${pkgs.system}.default

  ];
}
