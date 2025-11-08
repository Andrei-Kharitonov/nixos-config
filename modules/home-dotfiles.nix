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

    # tmux config
    ".tmux.conf" = {
      source = ../dotfiles/tmux/.tmux.conf;
    };

    # hiddify proxy client
    # download AppImage from https://github.com/hiddify/hiddify-app/releases/
    # and put it to ~/appimages/hiddify.AppImage
    ".local/share/applications/Hiddify.desktop" = {
      source = ../dotfiles/hiddify/Hiddify.desktop;
    };
    "Pictures/icons/hiddify-logo.png" = {
      source = ../dotfiles/hiddify/hiddify-logo.png;
    };
  };
}
