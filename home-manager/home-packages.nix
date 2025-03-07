{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    gedit
    obs-studio
    obsidian
    pavucontrol
    telegram-desktop
    nekoray
    kitty
    networkmanagerapplet
    file-roller
    lact
    winbox4
    qbittorrent
    # WORK Apps
    onlyoffice-desktopeditors
    remmina
    lens
    # CLI utils
    rofi-power-menu
    playerctl
    blueman
    fastfetch
    tree
    yandex-disk
    brightnessctl
    cliphist
    htop
    ntfs3g
    unzip
    wl-clipboard
    zip
    xdotool

    # WM stuff
    #libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    hypridle
    waybar
    wlogout
    cliphist
    parallel
    imagemagick
    libnotify
    ## scrinshot
    satty
    slurp
    grim
    # Theme
    nwg-look
    # Other
    nix-prefetch-scripts
    dunst
  ];
}


