# Setting up installation environment

mkdir ~/install
cd ~/install

# Update pacman mirrorlist

curl https://raw.githubusercontent.com/JohanVonElectrum/arch/master/pacman/mirrorlist.sh -o mirrorlist.sh
chmod +x mirrorlist.sh
./mirrorlist.sh

# Install arch with some packages

pacstrap /mnt base linux linux-firmware nano networkmanager xorg xf86-video-nouveau xf86-video-fbdev xterm qtile curl

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt
