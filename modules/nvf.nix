{pkgs, lib,...}: 
{
  vim = {
    theme = {
      enable = true;
      name = "dracula";
      style = "dark";
    };
    telescope.enable = true;
  };
}
