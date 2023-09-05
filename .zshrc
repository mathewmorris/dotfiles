# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
path=("$HOME/bin:/usr/local/bin" $path)

path+=("$HOME/.nodenv/bin")

export PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git) 

source $ZSH/oh-my-zsh.sh

alias sz="source ~/.zshrc"
alias cz="vim ~/.zshrc"
alias ni="npm install"
alias nr="npm run"
alias getJwt="/Users/morrisms/code/snippets/bin/getJwt.sh"
alias killport=findandkill
alias dotnet-core-uninstall="~/dotnet-core-uninstall/dotnet-core-uninstall"
alias vim="nvim"
alias gw="git worktree"

eval "$(nodenv init -)"

# Github
export GIT_USERNAME="mathewmorris"
export GIT_PERSONAL_ACCESS_TOKEN=""
export XDG_CONFIG_HOME="$HOME/dotfiles"

# .NET
# alias nuget="mono /usr/local/bin/nuget.exe"

# Custom Functions

findandkill() {
  port=$(lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }')
  kill -9 $port
}

deleteBranches() {
  git branch | grep -v "main" | xargs git branch -D
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh

