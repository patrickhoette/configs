# Defined in - @ line 1
function ls --description 'alias ls=ls -A -C -N --color=auto'
	command ls -A -C -N --color=auto $argv;
end
