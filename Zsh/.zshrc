# THEMING
theme="miloshadzic"

# SETUP
# Vim
export EDITOR='nvim'
export VISUAL='nvim'

# Path
typeset -U PATH path
path=(
    "$path[@]"
    "$HOME/Applications/bin"
    "$HOME/myApplications/bin"
    "/usr/bin"
    "/usr/local/bin"
    "/opt/local/bin"
    "/opt/local/sbin"
    "$HOME/.gem/ruby/2.7.0/bin"
)
export PATH

# Plugins
source ~/.zgen/zgen.zsh

if ! zgen saved; then
	# oh-my-zsh
	zgen oh-my-zsh
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/pip
	zgen oh-my-zsh plugins/adb
	zgen oh-my-zsh plugins/extract
	zgen oh-my-zsh plugins/git-auto-fetch
	zgen oh-my-zsh themes/$theme

	# Third Party
	zgen load unixorn/autoupdate-zgen
	zgen load zsh-users/zsh-autosuggestions
	zgen load zsh-users/zsh-completions
	zgen load chrissicool/zsh-256color
	zgen load zdharma/fast-syntax-highlighting

	# Apply
	zgen save
fi

# Aliases & Functions
# Laziness
alias c="clear"
alias e="exit"
alias fm="ranger"

function vim() {
	nvim $*
}

function cp() {
	command cp -v $*
}

function mv() {
	command mv -v $*
}

function ls() {
	colorls --light -A --gs $2
}

function ydl() {
	youtube-dl --external-downloader="aria2c" --external-downloader-args="-j 5 -x 5 -s 5" --prefer-free-formats $*
}

function update() {
	if type trizen > /dev/null ; then
		trizen -Syu --devel ; trizen -Rns $(sudo pacman -Qtdq)
	elif type pacman > /dev/null ; then
		sudo pacman -Syu ; sudo pacman -Rns $(sudo pacman -Qtdq)
	elif type apt > /dev/null ; then
		sudo apt update ; sudo apt upgrade ; sudo apt auto-remove
	elif type port > /dev/null ; then
		brew update ; brew upgrade
	fi
}

# Configs
alias vc="nvim ~/.config/nvim/init.vim"
alias vi3c="nvim ~/.config/i3/config"
alias vi3bc="nvim ~/.config/i3/i3status.toml"
alias vzc="nvim ~/.zshrc"

# Android Development
function g() {
	./gradlew $*
}
