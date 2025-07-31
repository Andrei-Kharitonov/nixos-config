{ config, pkgs, ... }:

{
  home.username = "andrei";
  home.homeDirectory = "/home/andrei";

  # Please read the comment before changing.
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    hello
    git
  ];

  programs.git ={
    enable = true;
    userEmail = "test@gmail.com";
    userName = "andrei";
  };

  # For dotfiles
  home.file = {};

  # Manage enviroment variables
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}