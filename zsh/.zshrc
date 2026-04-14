if [[ -n $GHOSTTY_RESOURCES_DIR ]]; then
  source "$GHOSTTY_RESOURCES_DIR"/shell-integration/zsh/ghostty-integration
fi

export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/Users/will/.antigravity/antigravity/bin:$PATH"
export PATH=/Users/will/.opencode/bin:$PATH

export EDITOR='vim'

setopt no_share_history
unsetopt share_history

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

# pnpm
export PNPM_HOME="/Users/will/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/will/.bun/_bun" ] && source "/Users/will/.bun/_bun"
