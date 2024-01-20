# enable instant prompt. See https://github.com/romkatv/powerlevel10k/blob/master/README.md#instant-prompt for more info
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh # load personal prompt config
source ~/powerlevel10k/powerlevel10k.zsh-theme # load powerlevel10k

# zsh plugins https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(git) 

# PATH updates
path=("$HOME/bin:/usr/local/bin" $path)
path=("$HOME/.nodenv/bin" $path)
path=("$HOME/.local/bin" $path)
path=("$HOME/.rbenv/bin" $path)
path=("$HOME/go/bin" $path)
path+=("/usr/local/go/bin")

eval "$(nodenv init -)"
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

alias vim="nvim"

alias sz="source ~/.zshrc"
alias cz="vim ~/.zshrc"

alias ni="npm install"
alias nr="npm run"

alias distro='cat /etc/*-release'

alias sapu='sudo apt update'

alias urb='cd ~/.rbenv/plugins/ruby-build && git pull'

find_and_kill_on_port() {
  port=$(lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }')
  kill -9 $port
}

# Pretty dangerous, just make sure you know what you're doing. 
# Would delete every branch even ones that are not merged
# Should put some rails around this, maybe check to see if merged, then delete those
delete_branches() {
  git branch | grep -v "main" | xargs git branch -D
}

export XDG_CONFIG_HOME="$HOME/dotfiles" # nvim config
export PATH
export ZSH="$HOME/.oh-my-zsh"

