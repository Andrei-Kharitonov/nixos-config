{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    vim # terminal text editor
    neovim # vim but better
    wget # cli utility for downloading from internet
    nekoray # proxy gui client
    tree # display tree directory structure
    htop # terminal task manager
    nh # yet another nix helper
    zsh # shell
  ];

  programs = {
    firefox = {
      enable = true;
    };

    nekoray = {
      enable = true;
      tunMode.enable = true;
    };

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/andrei/nixos-config";
    };

    zsh = {
      enable = true;
    };

    neovim = {
      enable = true;
      defaultEditor = true;
    };
  };
}