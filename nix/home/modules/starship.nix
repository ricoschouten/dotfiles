{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    settings = pkgs.lib.importTOML ./starship.toml;
    presets = [
      "nerd-font-symbols"
    ];
  };
}
