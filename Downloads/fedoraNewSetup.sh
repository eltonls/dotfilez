echo "=============================================="
echo "This is the starter Script. Please sit down and enjoy the installation time!"
echo "=============================================="

# https://forums.fedoraforum.org/showthread.php?321492-Intel-hd-graphics

echo "Our Graphics Card Driver:"
sudo dnf install fedora-workstation-repositories -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install dnf-utils -y
sudo dnf install rpmfusion-free-release-tainted -y
sudo dnf install libdvdcss -y
sudo dnf install rpmfusion-nonfree-release-tainted -y
sudo dnf groupupdate multimedia -y
sudo dnf groupupdate sound-and-video -y
sudo dnf install \*-firmware -y
dnf --refresh check-update 
dnf distro-sync 
dnf update --best --allowerasing


echo "First the software we need"
sudo dnf install anki  -y
sudo dnf install polybar  -y
sudo dnf install rofi  -y
sudo dnf install dunst -y
sudo dnf install neovim -y
sudo dnf install php -y
sudo dnf install composer -y
sudo dnf install nodejs -y
sudo dnf install ark -y
sudo dnf install firefox -y
sudo dnf install tor -y
sudo dnf install megasync  -y
sudo dnf install deluge -y
sudo dnf install thunderbird -y
sudo dnf install cawbird -y
sudo dnf install viewnior -y
sudo dnf install blender -y
sudo dnf install flameshot -y
sudo dnf install godot -y
sudo dnf install kitty -y
sudo dnf install tmux -y
sudo dnf install gparted  -y
sudo dnf install htop -y
sudo dnf install stacer -y
sudo dnf install neovim-qt -y
sudo dnf install emacs -y
sudo dnf install foliate -y
sudo dnf install ghostwriter -y
sudo dnf install gummi  -y
sudo dnf install mcomix  -y
sudo dnf install focuswriter  -y
sudo dnf install qalculate -y
sudo dnf install compton  -y
sudo dnf install zsh  -y
sudo dnf install wine -y
sudo dnf install lutris -y
sudo dnf install neofetch -y
sudo dnf install nitrogen -y

echo "Put some flatpak too!"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y

sudo flatpak install flathub com.getferdi.Ferdi -y
sudo flatpak install flathub com.unity.UnityHub -y 
sudo flatpak install flathub ch.theologeek.Manuskript -y
sudo flatpak install flathub md.obsidian.Obsidian -y
sudo flatpak install flathub org.duckstation.DuckStation -y


echo "Install oh my zsh!"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Change the shell to zsh"
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

echo "Install Jovial theme"
curl -sSL https://github.com/zthxxx/jovial/raw/master/installer.sh | sudo -E bash -s $USER

echo "Then the tools we need!"
sudo dnf install gcc g++

echo "RUST TOOLS"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Config the git:"
git config --global user.email rs.eltonribeiro@gmail.com
git config --global user.name "Elton"