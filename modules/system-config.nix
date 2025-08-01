{ config, pkgs, lib, ... }:

{
  # Boot efi
  boot.loader = {
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
  };

  # Network
  networking = {
    networkmanager.enable = true;
  };
  services.openssh.enable = true;

  # Desktop manager
  services = {
    xserver = {
      enable = true;
      desktopManager.xfce.enable = true;
    };
    displayManager.defaultSession = "xfce";
  };

  # Audio
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # Users
  users.users = {
    andrei = {
      isNormalUser = true;
      extraGroups = [ "wheel" "vboxusers" "vboxsf" ];
    };
  };
}