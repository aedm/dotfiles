if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root or with sudo."
    exit 1
fi

# Set up config symlinks
mkdir ~/.config
ln -s ~/.dotfiles/config/fish ~/.config/fish

# Run the distro-specific install script
LINUX_ID=$(grep -oP '^ID=\K[^"]+' /etc/os-release)
SCRIPT_FILE="$(dirname "$0")/$LINUX_ID-start.sh"
if [ ! -f "$SCRIPT_FILE" ]; then
    echo "Script file not found: $SCRIPT_FILE"
    exit 1
fi
sh $SCRIPT_FILE

# Install oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > omf-install
fish omf-install --noninteractive -y --path=~/.local/share/omf --config=~/.dotfiles/config/omf
rm omf-install

# Install the bobthefish theme
echo "omf install bobthefish" | fish

# Set fish shell as default shell
FISH=`which fish`
echo $FISH | tee -a /etc/shells
chsh -s $FISH
fish