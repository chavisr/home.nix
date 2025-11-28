{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ "git" "fzf" ];
    };

    initExtra = ''
      export PATH=$PATH:$HOME/.local/bin
      alias ll="ls -al"
    '';
  };

  # If you prefer bash:
  # programs.bash.enable = true;
}

