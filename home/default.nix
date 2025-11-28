{ config, pkgs, ... }:

{
  home.username = "chavis";
  home.homeDirectory = "/home/chavis";

  # Let Home Manager manage itself
  programs.home-manager.enable = true;

  # Import other modules
  imports = [
    ./shell.nix
    ./nvim.nix
  ];

  # Install system-wide packages for your user
  home.packages = with pkgs; [
    # CLI tools
    git
    fzf
    ripgrep
    fd
    bat
    htop
    tmux
    wget
    curl
    unzip
    jq
    bottom
  ];

  # Set environment variables
  home.sessionVariables = {
    EDITOR = "nvim";
  };
}

