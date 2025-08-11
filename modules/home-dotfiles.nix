{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.file = {
    # wallpapers
    "Pictures/wallpapers" = {
      source = ../imgs/wallpapers;
      recursive = true;
    };

    # zsh powerlevel10k theme
    ".p10k.zsh" = {
      source = ../dotfiles/zsh/.p10k.zsh;
    };

    # neovim config
    ".config/nvim" = {
      source = ../dotfiles/nvim;
      recursive = true;
    };

    # kde config konsave
    ".config/konsave" = {
      source = ../dotfiles/konsave;
      recursive = true;
    };
  };
}
