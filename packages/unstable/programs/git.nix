{config, unstable_pkgs, lib, ...}:
{
  programs.git = {
    enable = true;
    config.user.name = "omnia";
    config.user.userEmail = "zzzooozzz836@gmail.com";
  };
}
