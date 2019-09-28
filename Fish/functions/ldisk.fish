# Defined in - @ line 1
function ldisk --description 'alias ldisk=sudo fdisk -l'
	sudo fdisk -l $argv;
end
