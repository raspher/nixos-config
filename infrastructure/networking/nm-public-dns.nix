{ config, pkgs, ...}:

{
    networking.networkmanager.appendNameservers =
    [
        "9.9.9.9" "149.112.112.112" "2620:fe::fe" "2620:fe::9"
        "1.1.1.1" "1.0.0.1"
        "8.8.8.8" "8.8.4.4"
    ];
}