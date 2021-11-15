# Arch Linux

## Instalación
Ajustamos el layout de teclado al español.
> loadkeys es

Ubicamos el disco sobre el que queremos realizar la instalación.
> fdisk -l

### UEFI

> fdisk _**disk**_

| DESCRIPTION | N   | SIZE  | TYPE |
| ----------- | --- | ----- | ---- |
| EFI         | 1   | +512M | ef   |
|             | 2   | ALL   | 05   |
| /           | 5   | -4G   | 83   |
| SWAP        | 6   | +4G   | 82   |

Formateamos las particiones.
```bash
mkfs.fat -F 32 **_partition1_**  
mkfs.ext4 **_partition5_**  
mkswap **_partition6_**  
```
Y luego las montamos.
```bash
mount **_partition5_** /mnt  
mkdir /mnt/efi  
mount **_partition1_** /mnt/efi  
swapon **_partition6_**  
```
