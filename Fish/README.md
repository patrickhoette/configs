# Fish

## Oh My Fish

I use [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) as framework around the fish shell.

## Plugins

I use [fisher](https://github.com/jorgebucaran/fisher) as a package manager for fish shell. I used this to install the theme-bobthefish package. For more info see [themes section](#themes). 

### Themes

I use a modified version of [bobthefish](https://github.com/oh-my-fish/theme-bobthefish)'s default dark theme. I modified it using the colours from the Dracula theme and a bit of personal preference. Further more I dropped the right side prompt as I absolutely hate them. I also dropped most info of, of the prompt meaning when you are in in your home folder the prompt is as minimal as it can be while looking nice. Honestly do you need to know the logged in user and hostname when you are on your own machine?

For further information on theming refer to the [configuration section](#configuration) below.

## Configuration

My configuration is just theming options.

__Display the username and hostname when in an ssh session__

```shell
# SSH only
set -g theme_display_user ssh
set -g theme_display_hostname ssh
```

__Showing the exit status of the previous command__

```shell
# Exit status
set -g theme_show_exit_status yes
```

__Don't put the cursor on a new line__

*I feel quite strongly about this*

```shell
# No newline
set -g theme_newline_cursor no
```

__Enable nerd font utilization__

```shell
# Nerd fonts
set -g theme_nerd_fonts yes
```

__Disable greeting__

```shell
# Greeting
set fish_greeting
```

## Functions

*Yeah I am truly this lazy (I prefer the term efficient though).* 

Commands to create the aliases are listed below. If you are looking for the function file check the [function directory](functions).

__Short hand__

*Frequently used commands shortened for faster usage.*

```shell
# I like to clear my terminal constantly
alias -s c='clear'

# This is just a really nice quick option to close
alias -s e='exit'

# Ranger's name is too long to type and fm is a nice abbreviation of file manager 
alias -s fm='ranger'

# At some point or other I had to create a bootable usb a lot and 
# created this alias, now I can't live without it
alias -s ldisk='sudo fdisk -l'


# Installs, Removes unused and updates Vundle plugins
alias -s vpi='vim +PluginInstall +PluginClean +PluginUpdate +qall'

# Explains itself, youtube-dl is long and has a special character.
alias -s ydl='youtube-dl'
```

__Configuration__

*Configuration files accessed somewhat regularly. Follows the naming scheme `v (vim) + ${name} + c (config)`, except fish who uses `c (configure) + ${name}`.*

```shell
# Vim
alias -s vc='vim ~/.vimrc'

# i3wm
alias -s vi3c='vim ~/.config/i3/config'

# Xresources (mainly URxvt)
alias -s vxc='vim ~/.Xresources'

# Ranger
alias -s vrc='vim ~/.config/ranger/rc.conf'

# Fish has to many files so just warp to config folder
alias -S cfish='cd ~/.config/fish'
```

__Default options__

*These are command overrides so that they always run with some standard options. Saves me time and I don't have remember every letter of the alphabet for every program*

```shell
# Copy files: 
# -r = recursively because I always forget. 
# -i = ask before overwritting. 
# -u = update file when precent and source is newer, write when destination non existant. 
# -v = Please tell me what you are doing.
alias -s cp='cp -r -i -u -v'

# Move/Rename files:
# -v = Please tell me what you are doing.
alias -s mv='mv -v'

# Download a file:
# -c = continue.
# -j = max parallel downloads.
# -x = max connections per server.
# -s = max splits of a file.
alias -s download='-c true -j 5 -x 10 -s 5 --allow-overwrite true --enable-color true --human-readable true'

# List files (array):
# -A = list all except '.' and '..'.
# -m = list files horizontaly and comma separated.
# -Q = put quotes around files, next option makes quotes appear always and ''.
alias -s l='ls -A -m -Q --quoting-style=shell-always --color=auto'

# List files (columns):
# -A = list all except '.' and '..'.
# -C = columns.
# -N = no quotes.
alias -s ls='ls -A -C -N --color=auto'

# List files (details):
# -A = list all except '.' and '..'.
# -h = human readable file sizes.
# -s = show size.
# -N = no quotes.
# -o = list long format but no group.
alias -s lsd='ls -A -h -s -N -o --color=auto --time-style="+F_%I:%M%p"'
```

__Logic__

*aliases/functions containing a bit of logic*

```shell
# function name = update
# Checks package manager and executes correct commands for syncing, upgrading and remove orphans.
function update --description 'alias update=yay -Syu; sudo pacman -Rns (sudo pacman -Qtdq)'
	if ! type pacman > /dev/null; then
		sudo apt-get update; sudo apt-get upgrade; sudo apt-get auto-remove
  	else
  		yay -Syu; sudo pacman -Rns (sudo pacman -Qtdq);
	end 
end
```

