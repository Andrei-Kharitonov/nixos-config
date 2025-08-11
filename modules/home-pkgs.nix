{
  config,
  pkgs,
  lib,
  ...
}:

{
  home.packages = with pkgs; [
    git # version control system
    alacritty # terminal emulator
    neovim # modern terminal text editor
    vscode # IDE
    libreoffice # office
    tree # display tree directory structure
    btop # terminal task manager
    lf # terminal file manager
    fastfetch # system info
    qmk # keyboard firmware
    vial # qmk keyboard configuring
    telegram-desktop # messenger
    discord # discord
    wine # run windows programs
    git-graph # git graph branches
    tor-browser # anonymous browser
    flameshot # screenshot
    konsave # kde config manager
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "89729599+Andrei-Kharitonov@users.noreply.github.com";
      userName = "Andrei-Kharitonov";
    };

    alacritty = {
      enable = true;
      settings = {
        window = {
          dynamic_title = false;
          padding = {
            x = 4;
            y = 4;
          };
          dimensions = {
            columns = 80;
            lines = 30;
          };
        };
      };
    };

    vscode = {
      enable = true;
    };

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/andrei/nixos-config";
    };

    zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
      enableCompletion = true;
      plugins = [
        {
          name = "powerlevel10k";
          src = pkgs.zsh-powerlevel10k;
          file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
        }
      ];
      initContent = ''
        source ~/.p10k.zsh
      '';
      oh-my-zsh = {
        enable = true;
      };
    };
  };
}
