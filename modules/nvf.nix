{pkgs, lib,...}: 
{
  vim = {
    autocomplete.nvim-cmp.enable = true;
    ui.borders.plugins.which-key.enable = true;
    ui.borders.plugins.which-key.style = "solid";

    filetree.neo-tree.enable = true;
    options = 
    {
      tabstop = 2;
    };
    globals = 
    {
      mapleader = " ";
    };
    theme = 
    {
      enable = true;
      name = "dracula";
      style = "dark";
    };
    telescope = 
    {
      enable = true;
    };
    languages = 
    {
      enableLSP = true;
      enableTreesitter = true;
      rust = 
      {
        enable = true;
        lsp.enable = true;
      };
      nix = 
      {
        lsp.enable = true;
      };

    };
  };
}
