# Defined in - @ line 1
function aria2c --description 'alias aria2c=aria2c -c true -j 5 -x 10 -s 5 --allow-overwrite true --enable-color true --human-readable true'
	command aria2c -c true -j 5 -x 10 -s 5 --allow-overwrite true --enable-color true --human-readable true $argv;
end
