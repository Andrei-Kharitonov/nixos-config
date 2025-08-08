{
  config,
  pkgs,
  lib,
  ...
}:

{
  # For dotfiles
  home.file = {
    # wallpapers
    "Pictures/wallpapers" = {
      source = ../imgs/wallpapers;
      recursive = true;
    };

    # zsh powerlevel10k theme
    ".p10k.zsh" = {
      source = ../dotfiles/.p10k.zsh;
    };
  };
}
