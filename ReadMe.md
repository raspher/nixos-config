# My NixOS configs
CURRENT STATE: EXPERIMENTAL
## Why and how
`NixOS is a Linux distribution based on the Nix package manager and build system. It supports reproducible and declarative system-wide configuration management as well as atomic upgrades and rollbacks, although it can additionally support imperative package and user management. In NixOS, all components of the distribution — including the kernel, installed packages and system configuration files — are built by Nix from pure functions called Nix expressions. ` - NixOS wiki

This repo contains all recipes needed to build a system. Since I have several devices and their configuration may differ, instead of writing one `.nix` configuration per device (which would be pain to maintain) I've decided to split it into reusable chunks:
- `infrastructure`: hardware related configuration (networking, bootloaders, audio)
- `profiles`: domain-driven approach
- `services`: reusable services configuration 
- `users`: user specific apps and configuration 

Worth noting, they are independent.

## Mutable data
Since we have only recipes, we must hold sensitive data (keys) and state (f.e. DB backups) somewhere - in the cloud.
Services configuration is held by nix, but data must be somehow imported. It's up to you how it's done (rsynced).

Applications configuration can be easily handled by [home-manager](https://github.com/nix-community/home-manager), but after reading their **_Words of warning_**, i've decided to avoid it in my system. Dotfiles can be as well maintained on separate git repo.

In that way we can easily change VPS provider or adopt new device.

## Cloud
This repo should be used with [nixos-infect](https://github.com/elitak/nixos-infect).
1. Follow nixos-infect docs.
2. Clone this repo, adjust target configuration with existing configuration.
3. TRY what you've done
4. `nixos-rebuild switch`

# Usage
You should read carefully and adjust configuration for your needs
## Testing
- Clone repo
```bash
git clone https://github.com/raspher/nixos-config.git
```
- Make some changes
- Test it
```bash
nixos-rebuild test -I nixos-config=./nixos-config/machines/asusa52f/configuration.nix
```

If modified successfully `rm /etc/nixos/configuration.nix` `ln -s /root/nixos-config/machines/asusa52f/configuration.nix /etc/nixos/configuration.nix` `nixos-rebuild switch`, reboot and check again if it's working (just to be sure). Then commit and push changes to git.

## Deployment
!TODO each machine should check on boot for new commit on master branch.
If it exists then fetch changes and `nixos-rebuild switch`.

To manage multiple instances, use [Ansible](https://www.ansible.com/).

### _Note_
This repo was heavily inspired by [davidak](https://codeberg.org/davidak/nixos-config)