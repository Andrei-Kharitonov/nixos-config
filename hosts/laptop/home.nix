{
  config,
  pkgs,
  lib,
  ...
}:

{
  imports = [
    ./../../modules/home-pkgs.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = "andrei";
  home.homeDirectory = "/home/andrei";

  # For dotfiles
  home.file = { };

  # Manage enviroment variables
  home.sessionVariables = { };

  # Don't change this!
  home.stateVersion = "25.05";
}
