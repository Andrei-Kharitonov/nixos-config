{ config, pkgs, lib, ... }:

{
  networking = {
    networkmanager.enable = true;
  };
  services.openssh.enable = true;
}