{ config, pkgs, ...}:

{
    # polish timezone
    time.timeZone = "Europe/Warsaw";
    # english language
    i18n.defaultLocale = "en_US.utf8";
    # polish internationalization scheme
    i18n.extraLocaleSettings = {
      LC_ADDRESS = "pl_PL.utf8";
      LC_IDENTIFICATION = "pl_PL.utf8";
      LC_MEASUREMENT = "pl_PL.utf8";
      LC_MONETARY = "pl_PL.utf8";
      LC_NAME = "pl_PL.utf8";
      LC_NUMERIC = "pl_PL.utf8";
      LC_PAPER = "pl_PL.utf8";
      LC_TELEPHONE = "pl_PL.utf8";
      LC_TIME = "pl_PL.utf8";
    };
    # polish characters in console
    console.keyMap = "pl2";
}