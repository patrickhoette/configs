# Defined in - @ line 1
function vpi --description 'alias vpi=vim +PluginInstall +PluginClean +PluginUpdate +qall'
	vim +PluginInstall +PluginClean +PluginUpdate +qall $argv;
end
