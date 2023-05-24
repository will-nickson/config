# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.fig/bin:$PATH"

export EDITOR='vim'

# Alias
alias ll='ls -la'
alias config='/usr/bin/git --git-dir=/Users/will/.config/ --work-tree=/Users/will'

# Movement bindings
bindkey "^B" backward-word
bindkey "^W" forward-word

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='%F{203}${vcs_info_msg_0_} %F{113}%~%f %F{104}%#%f '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

set editing-mode vim

[ -s ~/.fig/shell/fig.sh ] && source ~/.fig/shell/fig.sh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
