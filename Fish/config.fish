# REQUIRED
# ---
if set -q SSH_TTY
	set -g fish_color_host brred
end

# THEMING
# ---

# SSH only
set -g theme_display_user ssh
set -g theme_display_hostname shh

# Exit status
set -g theme_show_exit_status yes

# No newline
set -g theme_newline_cursor no

# Nerd fonts
set -g theme_nerd_fonts yes

# Greeting
set fish_greeting
