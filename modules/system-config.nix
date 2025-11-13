{
  config,
  pkgs,
  lib,
  ...
}:

{
  # Boot efi
  boot.loader = {
    timeout = 1;
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
    firewall.enable = true;
    firewall.checkReversePath = "loose";
    wireguard.enable = true;
  };
  services.openssh.enable = true;

  # Unfree packages
  nixpkgs.config.allowUnfree = true;

  # Desktop manager
  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
  };

  # Time zone
  time.timeZone = "Europe/Saratov";

  # Internationalisation properties
  i18n.defaultLocale = "en_US.UTF-8";
  # i18n.extraLocaleSettings = {
  #   LC_ADDRESS = "ru_RU.UTF-8";
  #   LC_IDENTIFICATION = "ru_RU.UTF-8";
  #   LC_MEASUREMENT = "ru_RU.UTF-8";
  #   LC_MONETARY = "ru_RU.UTF-8";
  #   LC_NAME = "ru_RU.UTF-8";
  #   LC_NUMERIC = "ru_RU.UTF-8";
  #   LC_PAPER = "ru_RU.UTF-8";
  #   LC_TELEPHONE = "ru_RU.UTF-8";
  #   LC_TIME = "ru_RU.UTF-8";
  # };

  # Keyboard layout
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us,ru";
      variant = "";
      options = "grp:alt_shift_toggle";
    };
  };

  # Audio
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # Bluetooth
  hardware.bluetooth.enable = true;

  # Users
  users.users = {
    andrei = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
    };
  };

  # Swap file
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 4 * 1024; # 4G
    }
  ];

  # Shell
  programs.zsh.enable = true;
  users.users.andrei.shell = pkgs.zsh;
}
