# `./setup.sh`

# install nix
if [ ! -d "/nix" ]; then
    sudo apt-get install curl
    sudo curl -L https://nixos.org/nix/install | sh -s -- --daemon
fi

mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

# install packages
nix profile install .
