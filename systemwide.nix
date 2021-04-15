{ config, pkgs, ... }:

{
  time.timeZone = "America/Sao_Paulo";

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."allan.silva" = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ]; # whell group enables ‘sudo’ for the user.
  };

  # Software like vscode needs set this to true
  nixpkgs.config.allowUnfree = true;

  # Enable Virtualbox
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.extraGroups.vboxusers.members = [ "allan.silva" ];
}
