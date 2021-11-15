echo "username: "
read username

sudo pacman -S xsettingsd picom alacritty rofi pulseaudio pavucontrol pamixer brightnessctl arandr udiskie ntfs-3g network-manager-applet feh nitrogen libnotify notification-daemon base-devel git code firefox

cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $username:$username ./yay
cd yaymakepkg -si