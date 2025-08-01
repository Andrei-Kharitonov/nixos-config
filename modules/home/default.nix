{ config, pkgs, lib, ... }:

{
  imports = [
    ./base-packages.nix
  ];

  base-packages.enable = lib.mkDefault true;
}