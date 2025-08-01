{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim # terminal text editor
    wget # cli utility for downloading from internet
    tree # display tree directory structure
    htop # terminal task manager
    nh # yet another nix helper
    zsh # shell
  ];
}