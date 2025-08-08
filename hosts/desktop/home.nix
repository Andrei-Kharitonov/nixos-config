{
  config,
  pkgs,
  lib,
  ...
}:

{
  imports = [
    ./../../modules/home-pkgs.nix
    ../../modules/home-dotfiles.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = "andrei";
  home.homeDirectory = "/home/andrei";

  # Manage enviroment variables
  home.sessionVariables = { };

  # Don't change this!
  home.stateVersion = "25.05";
}
