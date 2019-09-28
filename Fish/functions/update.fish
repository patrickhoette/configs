# Defined in - @ line 1
# Checks package manager and executes correct commands for syncing, upgrading and remove orphans.
function update --description 'alias update=yay -Syu; sudo pacman -Rns (sudo pacman -Qtdq)'
	if ! type pacman > /dev/null; then
		sudo apt-get update; sudo apt-get upgrade; sudo apt-get auto-remove
	else
		yay -Syu; sudo pacman -Rns (sudo pacman -Qtdq);
	end
end
