{ config, pkgs, ... }:

{
  time.timeZone = "America/Sao_Paulo";

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."allan.silva" = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  # Software like vscode need set this to true
  nixpkgs.config.allowUnfree = true;
}