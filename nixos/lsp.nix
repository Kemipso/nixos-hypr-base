{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python311Packages.python-lsp-server # Python
    #nodePackages_latest.nodemon
    #nodePackages_latest.typescript
    #nodePackages_latest.typescript-language-server
    nodePackages_latest.vscode-langservers-extracted
    nodePackages_latest.yaml-language-server # Yaml
    nodePackages_latest.dockerfile-language-server-nodejs # Docker
    sumneko-lua-language-server # LUA
    marksman # Markdown
    nil # Nix
    #zls
    gopls # Go
    delve # Debugger for Go
  ];  
}
