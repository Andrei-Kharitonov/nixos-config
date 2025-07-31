{ config, pkgs, lib, ... }:

{
  imports = [
    ./programs-module.nix
  ];

  programs-module.enable = true;
}