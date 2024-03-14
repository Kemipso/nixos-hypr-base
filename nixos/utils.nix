{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mold # Faster linker
    gcc13
    jdk11
  ];
}
