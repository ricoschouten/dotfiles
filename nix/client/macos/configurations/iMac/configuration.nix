{ inputs, ... }: {
  imports = with inputs.self; [
    darwinModules.default
    # darwinModules.starship
  ];

  networking.hostName = "iMac";
}
