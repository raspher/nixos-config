{ config, pkgs, ... }:

{
    # enable systemd-boot manager
    boot.loader.systemd-boot.enable = true;
    # allow installation process to modify EFI boot variables
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.efi.efiSysMountPoint = "/boot/efi";
}