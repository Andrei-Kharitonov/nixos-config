{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    nekoray
  ];

  programs = {
    firefox = {
      enable = true;
    };

    nekoray = {
      enable = true;
      tunMode.enable = true;
    };
  };
}