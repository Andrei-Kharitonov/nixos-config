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

    # yazi config
    ".config/yazi" = {
      source = ../dotfiles/yazi;
      recursive = true;
    };

    # btop config
    ".config/btop" = {
      source = ../dotfiles/btop;
      recursive = true;
    };
  };
}
