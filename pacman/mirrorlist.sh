echo "# global rated" > ~/install/mirrorlist
reflector --latest 12 --sort rate | grep "Server =" >> ~/install/mirrorlist
echo >> ~/install/mirrorlist
echo "# spain rated" >> ~/install/mirrorlist
reflector --country Spain --latest 12 --sort rate | grep "Server =" >> ~/install/mirrorlist
echo >> ~/install/mirrorlist
echo "# default" >> ~/install/mirrorlist
cat /etc/pacman.d/mirrorlist | grep "Server =" >> ~/install/mirrorlist
mv ~/install/mirrorlist /etc/pacman.d/mirrorlist
