{ config, pkgs, ... }:
{
  imports =
    [
    # infrastructure
      /etc/nixos/hardware-configuration.nix     # automatically generated for each machine
      ../../infrastructure/common.nix
      ../../infrastructure/bootloaders/systemd-efi.nix
      ../../infrastructure/networking/nm-wireless.nix
      ../../infrastructure/networking/nm-public-dns.nix
      ../../infrastructure/audio/pipewire.nix
    # profile
      ../../profiles/desktop.nix
      ../../profiles/development.nix
      ../../profiles/laptop.nix
    # services

    # users

    # common
      ../common.nix
    ];

  # device specific networking
  networking.hostName = "a52f";

  # device specific packages
}
