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
