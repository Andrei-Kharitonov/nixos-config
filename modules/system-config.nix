{
  config,
  pkgs,
  lib,
  ...
}:

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
  boot.supportedFilesystems = [ "ntfs" ];

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
      description = "Andrei";
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

  # Vial udev rules
  services.udev.packages = [
    (pkgs.writeTextFile {
      name = "vial-udev-rules";
      destination = "/etc/udev/rules.d/59-vial.rules";
      text = ''
        KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{serial}=="*vial:f64c2b3c*", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"
      '';
    })
  ];

  # Syncthing
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "andrei";
    group = "users";
    dataDir = "/home/andrei";
    configDir = "/home/andrei/.config/syncthing";
    overrideDevices = false;
    overrideFolders = false;
  };
  networking.firewall.allowedTCPPorts = [ 8384 22000 ];
  networking.firewall.allowedUDPPorts = [ 22000 21027 ];
}
