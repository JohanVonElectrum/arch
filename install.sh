# Setting up installation environment

mkdir ~/install
cd ~/install

# Update pacman mirrorlist

curl https://raw.githubusercontent.com/JohanVonElectrum/arch/master/pacman/mirrorlist.sh -o mirrorlist.sh
chmod +x mirrorlist.sh
./mirrorlist.sh

curl https://raw.githubusercontent.com/JohanVonElectrum/arch/master/install/arch-chroot.sh -o /mnt/install/arch-chroot.sh

# Install arch with some packages

pacstrap /mnt base linux linux-firmware grub efibootmgr nano networkmanager xorg xf86-video-nouveau xf86-video-fbdev xterm qtile lightdm lightdm-gtk-greeter sudo curl

genfstab -U /mnt >> /mnt/etc/fstab

echo
echo "execute: cd install && chmod +x arch-chroot.sh && ./arch-chroot.sh"
arch-chroot /mnt
