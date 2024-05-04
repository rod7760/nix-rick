# nix-rick

My attempt at managing my packages with nix.

## Usage
`./setup.sh`
* Gets curl
* Gets nix
* Configures nix
* Installs packages into a profile.

## Concepts
`flakes`
* dir with `flake.nix` and `flake.lock`.
* I can specify packages and lock them.
* Easily share nix code.

`profiles`
* Can just think of these as users.
* Profiles have a similar layout as the linux root dir. 
For example, `~/.nix-profile/bin/make` points to `make` in the Nix store.

```bash
ls -l ~/.nix-profile/bin/make 
lrwxrwxrwx 1 root root 66 Dec 31  1969 /home/rick/.nix-profile/bin/make 
-> /nix/store/afp0kzsyj08idy9zy1wx154nii3idalj-gnumake-4.4.1/bin/make
```

* These packages are installed into the `nix-rick` profile.

## Resources
[zero-to-nix](https://zero-to-nix.com)
[Nix Reference](https://nixos.org/manual/nix/stable/)
[Nix as a homebrew replacement](https://sandstorm.de/de/blog/post/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement.html)

