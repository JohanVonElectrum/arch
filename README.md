# Arch Linux

## Instalación
Ajustamos el layout de teclado al español.
```bash
loadkeys es
```

Ubicamos el disco sobre el que queremos realizar la instalación.
```bash
fdisk -l
```

### UEFI

```bash
fdisk disk
```

| DESCRIPTION | N   | SIZE  | TYPE |
| ----------- | --- | ----- | ---- |
| EFI         | 1   | +512M | ef   |
|             | 2   | ALL   | 05   |
| /           | 5   | -4G   | 83   |
| SWAP        | 6   | +4G   | 82   |

Formateamos las particiones.
```bash
mkfs.fat -F 32 partition1  
mkfs.ext4 partition5  
mkswap partition6  
```
Y luego las montamos.
```bash
mount partition5 /mnt  
mkdir /mnt/efi  
mount partition1 /mnt/efi  
swapon partition6  
```
