{ config, pkgs, ... }:
{
  # enable GUI
  services.xserver.enable = true;

  # enable GNOME desktop
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # configure Keymap for X11
  services.xserver = {
    layout = "pl";
    xkbVariant = "";
  };

  # enable CUPS to print documents
  services.printing.enable = true;



}
