# Printers

## HP printers on linux

Don't use the "Add printer" facility of system preferences to install a network HP printer. Instead, download the hplip tool from https://developers.hp.com/hp-linux-imaging-and-printing/gethplip

The installer will give you a chance to install network printers. But you can also run `hp-setup`.

Execute `hp-plugin` (as non-root) to install plugins
