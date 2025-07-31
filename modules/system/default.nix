{ config, pkgs, lib, ... }:

{
  imports = [
    ./boot-module.nix
    ./vm-boot-module.nix
    ./network-module.nix
    ./display-module.nix
    ./audio-module.nix
    ./user-module.nix
  ];

  boot-module.enable    = lib.mkDefault true;
  vm-boot-module.enable = lib.mkDefault false;
  network-module.enable = lib.mkDefault true;
  display-module.enable = lib.mkDefault true;
  audio-module.enable   = lib.mkDefault true;
  user-module.enable    = lib.mkDefault true;

  user-module.userName = "andrei";

  time.timeZone = "Europe/Saratov";
}