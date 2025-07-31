{ config, pkgs, lib, ... }:

{
  imports = [
    ./../../modules/home/base-packages.nix
  ];

  home.username = "andrei";
  home.homeDirectory = "/home/andrei";

  # Please read the comment before changing.
  home.stateVersion = "25.05";

  # For dotfiles
  home.file = {};

  # Manage enviroment variables
  home.sessionVariables = {
    # EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}