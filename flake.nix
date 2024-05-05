# flake.nix
{
  description = "My home-packages setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    packages."aarch64-linux".default = let 
      pkgs = nixpkgs.legacyPackages."aarch64-linux";
    in
      pkgs.buildEnv {
      name = "home-packages";
      paths = with pkgs; [
        # General Tools
        git
        tmux
        curl
        wget
        zsh
        oh-my-zsh

        # IDE
        neovim
        lunarvim

        # C/C++
        gnumake
        cmake
        gdb
        ninja
        clang

        # Node.js
        nodePackages.pnpm
        nodejs

        # Rust
        rustup
        cargo-run-bin

        # Productivity
        timewarrior

        # Python
        pipx
        # hatch # TODO fails for some reason

        # OCaml
        # opam # TODO see readme for more 
        ocaml
        dune_3
        ocamlformat
      ];
    };
  };
}
