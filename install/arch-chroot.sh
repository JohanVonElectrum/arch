ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=es" > /etc/vconsole.conf

echo "Hostname: "
read hostname
echo $hostname > /etc/hostname
echo "127.0.0.1       localhost" > /etc/hosts
echo "::1             localhost" > /etc/hosts
echo "127.0.1.1       $hostname.localdomain $hostname" > /etc/hosts

mkinitcpio -P

echo "root password: "
passwd

echo "username: "
read username
useradd -mG wheel $username
echo "$username password: "
passwd $username

grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=grub_efi --recheck
grub-mkconfig -o /boot/grub/grub.cfg

exit