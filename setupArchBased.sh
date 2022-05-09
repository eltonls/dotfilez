echo "=============================================="
echo "This is the starter Script. Please sit down and enjoy the installation time!"
echo "=============================================="

echo "First the software we need"
# One at a time so it doesn't stop when it finds something that's already there! 
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm obsidian 
sudo pacman -S --noconfirm gcc
sudo pacman -S --noconfirm g++
sudo pacman -S --noconfirm neovim
sudo pacman -S --noconfirm neovim-qt
sudo pacman -S --noconfirm nodejs 
sudo pacman -S --noconfirm npm
sudo pacman -S --noconfirm php  
sudo pacman -S --noconfirm composer 
sudo pacman -S --noconfirm polybar 
sudo pacman -S --noconfirm rofi 
sudo pacman -S --noconfirm dunst 
sudo pacman -S --noconfirm deluge 
sudo pacman -S --noconfirm megasync 
sudo pacman -S --noconfirm ark
sudo pacman -S --noconfirm neofetch
sudo pacman -S --noconfirm htop
sudo pacman -S --noconfirm gparted
sudo pacman -S --noconfirm conky
sudo pacman -S --noconfirm grub
sudo pacman -S --noconfirm zsh 
sudo pacman -S --noconfirm viewnior
sudo pacman -S --noconfirm compton
sudo pacman -S --noconfirm flameshot 
sudo pacman -S --noconfirm blanket
sudo pacman -S --noconfirm foliate 
sudo pacman -S --noconfirm evince 
sudo pacman -S --noconfirm godot
sudo pacman -S --noconfirm kitty
sudo pacman -S --noconfirm tmux
sudo pacman -S --noconfirm emacs
sudo pacman -S --noconfirm grep
sudo pacman -S --noconfirm git
sudo pacman -S --noconfirm libresprite
sudo pacman -S --noconfirm sublime-text-4
sudo pacman -S --noconfirm wps-office
sudo pacman -S --noconfirm focuswriter
sudo pacman -S --noconfirm python-pywal
sudo pacman -S --noconfirm xfreerdp


echo "==============================================="
echo "GAMING STUFF!"
echo "==============================================="
sudo pacman -Sy
sudo pacman -S --noconfirm wine-staging winetricks
sudo pacman -S --noconfirm giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox
sudo pacman -S --noconfirm lutris

echo "==============================================="
echo "The aur packages we need!"
echo "==============================================="
#######################################################
#           FONTS
#######################################################

mkdir aur
cd aur
git clone https://aur.archlinux.org/nerd-fonts-fira-code.git
git clone https://aur.archlinux.org/nerd-fonts-inconsolata.git
git clone https://aur.archlinux.org/nerd-fonts-cascadia-code.git
cd nerd-fonts-fira-code
makepkg -si

cd ..
cd nerd-fonts-inconsolata
makepkg -si

cd .. 
cd nerd-fonts-cascadia-code
makepkg -si

cd ..

# Software
git clone https://aur.archlinux.org/notion-app-enhanced.git
cd notion-app-enhanced
makepkg -si
cd ..

git clone https://aur.archlinux.org/unityhub.git
cd unityhub
makepkg -si
cd ..

git clone https://aur.archlinux.org/anki-bin.git
cd anki-bin
makepkg -si
cd ..


echo "======================================================"
echo "SHELL INSTALLS:"
echo "======================================================"

echo "Install oh my zsh!"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Change the shell to zsh"
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

echo "Config the git:"
git config --global user.email rs.eltonribeiro@gmail.com
git config --global user.name "Elton"

sudo npm i -g neovim
pip install pynvim

# INSTALL PACKER.NVIM
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


