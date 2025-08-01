{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    git # version control system
    alacritty # terminal emulator
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "test@gmail.com";
      userName = "andrei";
    };

    alacritty = {
      enable = true;
    };
  };
}