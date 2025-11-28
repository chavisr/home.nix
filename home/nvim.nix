{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      tree-sitter
      tree-sitter-grammars.tree-sitter-python
      nodejs
    ];

    plugins = with pkgs.vimPlugins; [
      gruvbox-nvim
      telescope-nvim
      plenary-nvim
      nvim-treesitter
      nvim-lspconfig
    ];

    extraConfig = ''
      colorscheme gruvbox

      lua <<EOF
      require("telescope").setup{}
      require("lspconfig").pyright.setup{}
      EOF
    '';
  };
}

