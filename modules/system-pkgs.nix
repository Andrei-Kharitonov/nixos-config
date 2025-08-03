{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    vim # terminal text editor
    wget # cli utility for downloading from internet
    nekoray # proxy gui client
    nh # yet another nix helper
  ];

  programs = {
    firefox = {
      enable = true;
      languagePacks = [ "en-US" "ru" ];
    };

    nekoray = {
      enable = true;
      tunMode.enable = true;
    };
  };
}