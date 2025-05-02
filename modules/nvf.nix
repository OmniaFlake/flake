{pkgs, lib,...}: 
{
  vim = {
    autocomplete.nvim-cmp.enable = true;
    ui.borders.plugins.which-key.enable = true;
    ui.borders.plugins.which-key.style = "solid";
    enableLuaLoader = true;
    filetree.neo-tree.enable = true;

    statusline = 
    {
      lualine.enable = true;
    };



    options = 
    {
      tabstop = 2;
      autoindent = true;
      shiftwidth = 2;
    };


    globals = 
    {
      mapleader = " ";
    };

    keymaps = 
    [
      {
        key = "=";
        mode = "n";
        silent = true;
        action = "<cmd>w<CR>";
      }
      {
        key  = "-";
        mode = "n";
        silent = true;
        action = "<cmd>w<CR>";
      }

    ];

    theme = 
    {
      enable = true;
      name = "rose-pine";
      style = "moon";
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
