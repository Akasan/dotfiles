echo -e "\e[31m>>> Initialize alias \e[m"

alias cpPwd="pwd | pbcopy"
alias toVim="cd $HOME/.config/nvim"
alias toTmux="cd $HOME/.config/tmux"
alias toDesktop="cd $HOME/Desktop"
alias vim="nvim"
alias current_branch="git branch --contains | cut -c 2-"
alias toKaggle="cd $HOME/Desktop/kaggle"
alias sz="source ~/.zshrc"
alias ghq-get="ghq get"
alias mv="mv -i"
alias psql-login="psql postgres"
alias psql-list="psql -l"
alias ll="eza --icons -al --group-directories-first"
alias edit-zsh="vim ~/.zshrc"
alias tree="eza --icons -al -T -L 2"
alias reboot-zsh="exec zsh"
alias bser="brew search" 
alias binfo="brew info"
alias bins="brew install"

# Service for MongoDB
alias start-mongo="brew services start mongodb-community@5.0"
alias stop-mongo="brew services stop mongodb-community@5.0"

# Git
alias gpush="git push"
alias gpull="git pull"
alias gadd="git add"
alias gc="gitmoji -c"
alias gclone="git clone"
alias gstatus="git status"
alias gwtree="git worktree"

# nvim
alias rm-swp="rm -rf $HOME/.local/state/nvim/swap/*.swp"

# clang-format
alias clint-def="clang-format --style=file:'$HOME/.config/clang-format/.clang-format'"

# pkg-config
alias to-pkg-config="cd /usr/local/lib/pkgconfig"

# tmux aliases
alias tmux-new="tmux new -s"
alias tmux-kill-session="tmux kill-session -t"
alias tmux-killall="tmux kill-server"
alias tmux-attach="tmux a -t"
alias tmux-new-window="tmux new-window"

# AWS Settings
alias aws-terraform="source $HOME/.config/zsh/aws/terraform.zsh"


