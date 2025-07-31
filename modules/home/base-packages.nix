{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    tree
    htop
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "test@gmail.com";
      userName = "andrei";
    };
  };
}