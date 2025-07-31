{ config, pkgs, lib, ... }:

{
  users.users.andrei = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}