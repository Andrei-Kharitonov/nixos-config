{ config, pkgs, lib, ... }:

{
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
