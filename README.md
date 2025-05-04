My Flake Config


With
Unstable packages
stable packages

Tree

.
├── configuration.nix
├── flake.lock
├── flake.nix
├── hardware-configuration.nix
├── packages
│   ├── stable
│   │   ├── programs
│   │   │   ├── fish.nix
│   │   │   ├── fonts.nix
│   │   │   ├── graphics.nix
│   │   │   ├── hyprland.nix
│   │   │   ├── programs.nix
│   │   │   ├── ssh.nix
│   │   │   ├── starship.nix
│   │   │   └── steam.nix
│   │   ├── services
│   │   │   ├── flatpak.nix
│   │   │   ├── greeter.nix
│   │   │   ├── services.nix
│   │   │   ├── xdg.nix
│   │   │   └── xserver.nix
│   │   └── stable.nix
│   └── unstable
│       ├── programs
│       │   ├── git.nix
│       │   ├── nh.nix
│       │   ├── programs.nix
│       │   └── sway.nix
│       └── unstable.nix
├── README.md
└── user
    ├── boot.nix
    ├── settings.nix
    └── user.nix

8 directories, 27 files
