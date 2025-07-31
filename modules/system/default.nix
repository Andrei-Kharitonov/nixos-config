{ config, pkgs, lib, ... }:

{
  imports = [
    ./boot-module.nix
    ./network-module.nix
    ./display-module.nix
    ./audio-module.nix
    ./user-module.nix
  ];
}