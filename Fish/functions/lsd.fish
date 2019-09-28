# Defined in - @ line 1
function lsd --description 'alias lsd=ls -A -h -s -N -o --color=auto --time-style="+%F_%I:%M%p"'
	ls -A -h -s -N -o --color=auto --time-style="+%F_%I:%M%p" $argv;
end
