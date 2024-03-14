{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    #upx
    git
    lazygit
    license-generator
    git-ignore
    pass-git-helper
    #just
    xh
    tgpt
    # mcfly # terminal history
    zellij
    #progress
    #noti
    topgrade
    ripgrep
    #rewrk
    #wrk2
    procs
    tealdeer
    # skim #fzf better alternative in rust
    monolith # CLI tool for saving web pages as a single HTML file
    #aria # Downloader
    # macchina #neofetch alternative in rust
    sd # Simpler sed
    ouch # Compression / Decompression
    duf # Better df
    #du-dust
    fd # Alternative to find
    jq # jquery
    gh # GitHub
    #trash-cli
    #zoxide
    tokei # Code count
    fzf # Fuzzy finder
    bat # Cat with syntax highlighting
    mdcat # Cat for markdown
    #pandoc # Document converter
    lsd
    gping # graphical ping
    viu # Image viewer from terminal
    #tre-command # Tree replacement
    #felix-fm
    #chafa # terminal graphics and character art generator.
    #cmatrix
    pipes-rs
    rsclock
    #cava # Audio visualizer
    #figlet # ASCII art from plaintext
  ];
}
