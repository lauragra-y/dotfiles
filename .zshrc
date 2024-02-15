# Suppress .lesshst file
export LESSHISTFILE=-

# Pyenv
# https://github.com/pyenv/pyenv
# Installed via Homebrew
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


##
## ALIASES
## For a full list of active aliases, run `alias`
##
alias zshrc="open $HOME/.zshrc"
#alias ls="ls -lavhF"
alias ls="eza -abhHl"
alias home="cd ~"
alias vim="nvim"
alias vi="nvim"
alias gs="git status"


# Preferred editor for local and remote sessions
if [[ $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi


##
## PURE PROMPT
## https://github.com/sindresorhus/pure
## Installed via Homebrew
##
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure


##
## HOMEBREW COMMAND-NOT-FOUND
## https://github.com/Homebrew/homebrew-command-not-found
## Installed via Homebrew
##
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi


##
## ZSH SYNTAX HIGHLIGHTING
## https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
## Installed by Homebrew
## Keep at end of file
##
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
