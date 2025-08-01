{ config, pkgs, lib, ... }:

{
  imports = [
    ./sys-packages.nix
    ./programs-setup.nix
  ];
}