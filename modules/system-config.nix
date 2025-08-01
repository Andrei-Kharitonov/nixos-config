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
    desktopManager.plasma6.enable = true;
    displayManager = {
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
  };

  # Keyboard layout
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,ru";
      variant = "";
      options = "grp:alt_space_toggle";
    };
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
