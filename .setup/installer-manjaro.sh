# to update pacmanpkglist.txt: pacman -Qqen > ~/.setup/pacmanpkglist.txt
# to update aurpkglist.txt: pacman -Qqem > ~/.setup/aurpkglist.txt

sudo pacman -Sy --needed < pacmanpkglist.txt
yay -S --noconfirm < aurpkglist.txt
