# exported variables
set -Ux FZF_DEFAULT_COMMAND 'rg --files --hidden --glob \!.git'
# set -Ux GIT_PAGER 'bat -p'
set -Ux BAT_THEME 'Visual Studio Dark+'
set -Ux PAGER 'bat --style plain'
set -Ux EDITOR nvim
set -Ux GPG_TTY (tty)
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

# paths
fish_add_path "$HOME/bin"
fish_add_path "$HOME/machines/core/bin"
fish_add_path "/usr/local/bin"
fish_add_path "$HOME/.local/bin"

# theme overrides
set -U fish_pager_color_prefix 'green' '--bold'
set -U fish_color_valid_path white

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# keybindings
# fish_vi_key_bindings
# fish_default_key_bindings
bind \cg accept-autosuggestion execute
