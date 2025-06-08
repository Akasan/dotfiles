if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zstyle ":completion:*:commands" rehash 1

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cobalt2"
plugins=(git)
source $ZSH/oh-my-zsh.sh

. ~/.nvm/nvm.sh
. ~/.config/zsh/zinit.zsh
. ~/.config/zsh/alias.zsh
. ~/.config/zsh/util.zsh
. ~/.config/zsh/peco.zsh
. ~/.config/zsh/pyenv.zsh
. ~/.config/zsh/rbenv.zsh
. ~/.config/zsh/go.zsh
. ~/.config/zsh/homebrew.zsh
. ~/.config/zsh/imagemagick.zsh
. ~/.config/zsh/programming_package_command.zsh


if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    autoload -Uz compinit && compinit
fi

setopt share_history
setopt hist_ignore_all_dups
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# command to go to the root of git repository
fpath=($HOME/.zsh/functions/cd-gitroot(N-/) $fpath)
autoload -Uz cd-gitroot
alias cdu='cd-gitroot'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. ~/.config/openai/key.zsh

. "$HOME/.cargo/env"

export PATH=$HOME/.nodebrew/current/bin:$PATH

if [ -f "$HOME/Downloads/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"; fi
export PATH=$HOME/.gcloud/bin:$HOME/.gcloud:$PATH


eval "$(mise activate zsh)"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

eval $(thefuck --alias)
