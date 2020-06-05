# to update pacmanpkglist.txt: pacman -Qqen > ~/.setup/pacmanpkglist.txt
sudo pacman -Sy --needed < pacmanpkglist.txt
# to update aurpkglist.txt: pacman -Qqem > ~/.setup/aurpkglist.txt
yay -S --noconfirm < aurpkglist.txt
# to update snaps: snap list | awk '!/disabled/{print $1}' > snaps.txt
snap install $( cat snaps.txt )