# Arch Linux

## Instalación
Ajustamos el layout de teclado al español.
> loadkeys es

Ubicamos el disco sobre el que queremos realizar la instalación.
> fdisk -l

### UEFI

> fdisk _**disk**_

| NAME | N   | SIZE  | TYPE |
| ---- | --- | ----- | ---- |
| EFI  | 1   | +512M | ef   |
| /    | 1   | -4G   | 83   |
| SWAP | 1   | +4G   | 82   |

> mkfs.fat -F 32 **_partition1_**  
> mkfs.ext4 **_partition5_**  
> mkswap **_partition6_**  

> mount **_partition5_** /mnt  
> mkdir /mnt/efi  
> mount **_partition1_** /mnt/efi  
> swapon **_partition6_**  
