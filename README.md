# nix-rick

My attempt at managing my packages with nix.


## Usage
`./setup.sh`
* Gets curl
* Gets nix
* Configures nix
* Installs packages into a profile.

## Uninstall
```
nix profile remove --all
```

## Story

I have tried many different ways to automate installing my dev environment:
* Using dotfiles.
* Provisioning with ansible.
* Plain bash scripts.

I'm sure that there are some other that I don't remember. All of these solutions 
ultimatelty felt too cumbersome to maintain. I decided to give the nix package manager a try 
after hearing good things about it. After stumbling around, I found that nix flakes were regarded as the best practice for using nix. 

Things I hated:
* the syntax.
* the random nix specific errors I got. I struggled to install hatch and several ocaml packages. I did find some workarounds on github, but my response was, "I ain't reading allat."


I just want my dev machine to work, I don't care about the nix syntax or internals. After chatting with another engineer, he said "I just want a toml file with all my packages."
I agreed. I looked for a higher level abstraction on top of nix. This led me to [devbox](https://github.com/jetify-com/devbox/tree/main).


## Glossary
* `flakes`
* * dir with `flake.nix` and `flake.lock`.
* * I can specify packages and lock them.
* * Easily share nix code.

* `profiles`
* * Can just think of these as users.
* * Profiles have a similar layout as the linux root dir.
    For example, `~/.nix-profile/bin/make` points to `make` in the Nix store:
    ```bash
    ls -l ~/.nix-profile/bin/make 
    lrwxrwxrwx 1 root root 66 Dec 31  1969 /home/rick/.nix-profile/bin/make 
    -> /nix/store/afp0kzsyj08idy9zy1wx154nii3idalj-gnumake-4.4.1/bin/make
    ```

* * These packages are installed into the `nix-rick` profile.

## Resources
[zero-to-nix](https://zero-to-nix.com)
[Nix Reference](https://nixos.org/manual/nix/stable/)
[Nix as a homebrew replacement](https://sandstorm.de/de/blog/post/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement.html)
