{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    git # version control system
    alacritty # terminal emulator
    neovim # vim but better
    vscode # IDE
    libreoffice # office
    tree # display tree directory structure
    btop # terminal task manager
    lf # terminal file manager
    fastfetch # system info
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "89729599+Andrei-Kharitonov@users.noreply.github.com";
      userName = "Andrei-Kharitonov";
    };

    alacritty = {
      enable = true;
      settings = {
        window.padding = {
          x = 10;
          y = 5;
        };
      };
    };

    vscode = {
      enable = true;
    };

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/andrei/nixos-config";
    };

    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
    };
  };
}
