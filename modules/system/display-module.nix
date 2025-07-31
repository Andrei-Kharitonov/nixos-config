{ config, pkgs, lib, ... }:

{
  services = {
    xserver = {
      enable = true;
      desktopManager.xfce.enable = true;
    };
    displayManager.defaultSession = "xfce";
  };
}