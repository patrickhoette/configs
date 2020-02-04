#!/bin/bash
# SCRIPT TO AUTOMATICALLY COMMIT AND PUSH CONFIGURATION CHANGES TO
# GITLAB. ONLY USE WHEN MAKE MINOR TWEAKS. OTHERWISE DO MANUALLY AND
# WRITE A PROPER MESSAGE

# Potential improvement: Take message as an argument. Then it can be used alway.

# Add all files to git, then commit and push. Uses standard message
push_to_gitlab() {
	cd ~/configs
	git add .
	git commit --message="Automated config update. Change is probably small and insignificant"
	git push
}

# Copy over all the vim config files to ~/configs/Vim directory
copy_vim() {
	echo "Copying over vim configuration"
	cp -u ~/.vimrc ~/configs/Vim/vimrc
}

# Copy over all the fish config files to ~/configs/Fish directory
copy_fish() {
	echo "Copying over fish configuration"
	cp -u ~/.config/fish/completions/* ./completions/
	cp -u ~/.config/fish/conf.d/* ./conf.d/
	cp -u ~/.config/fish/functions/* ./functions/
	cp -u ~/.config/fisher/* ./fisher/
	cp -u ~/.config/config.fish ./config.fish
	cp -u ~/.config/fish_variables ./fish_variables
	cp -u ~/.config/fishfile ./fishfile
}

echo "Starting syncing local to remote"

#Copy vim over
copy_vim

# Copy fish over
copy_fish

# add . | commit | push
push_to_gitlab
