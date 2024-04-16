{ config, pkgs, ... }: {
  networking.computerName = config.networking.hostName;
  networking.localHostName = config.networking.hostName;

  system.defaults = pkgs.lib.importJSON ./defaults.json;

  # nix.configureBuildUsers = true;

  programs.zsh.enable = true;
  
  environment.systemPackages = [ pkgs.hello ];

  # security.pam.enableSudoTouchIdAuth = true;

  services.nix-daemon.enable = true;
}
