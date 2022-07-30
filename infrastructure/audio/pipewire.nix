{ config, pkgs, ...}:

{
   sound.enable = true;
   hardware.pulseaudio.enable = false; # disable pulseaudio in general
   security.rtkit.enable = true; # RealtimeKit, realtime sheduling priority for user processes, f.e. audio
   services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = false; #change to true if no audio
    jack.enable = false;
   };
}