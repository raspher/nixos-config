{ config, pkgs, ... }:
{
  # allow properiaty software on all machines
  nixpkgs.config.allowUnfree = true;

  # common packages between all machines
  environment.systemPackages = with pkgs; [
    htop
    wget
    curl
    whois
    lsof
    strace
    gdb
    xz
    lz4
    zip
    unzip
    p7zip
    rsync
    vim
    xclip
    tmux
    tree
    dfc
  ];

  programs.bash.enableCompletion = true;

  environment.variables = {
    "EDITOR" = "vim";
    "VISUAL" = "vim";
  };

  documentation.enable = true; # documentation of packages
  documentation.nixos.enable = true; # nixos documentation
  documentation.man.enable = true; # manual pages and the man command
  documentation.info.enable = true; # info pages and the info command
  documentation.doc.enable = true; # documentation distributed in packages' /share/doc

  # system version
  system.stateVersion = "22.05";
}
