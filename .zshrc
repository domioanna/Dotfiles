# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="domioanna"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Aliases

alias zshconfig="code ~/.zshrc"
alias zrcreload="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Path
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Editor
alias vim="nvim"
alias code="pstorm ."

# Eza
alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"

# PHP
alias php="herd php"
alias composer="herd composer"

# Artisan
alias art='php artisan'

# NPM
alias nrw='npm run watch'
alias nrd='npm run dev'

# Queue
alias queue='art queue:listen --queue=default,long,priority,cas,notification,scout,webhook,calendar-service,matching'

# Testing
alias t="art test"
alias tc="art test --coverage"
alias tp="art test --parallel"
alias tf="art test --filter="

# Git
alias ga="git add"
alias gaa="git add ."
alias gac='git add . && git commit -am '
alias gc="git commit -m "
alias gp="git push"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs="git status"
alias nah='git reset --hard;git clean -df'

# Composer
alias c='composer'
alias cr='composer require'
alias cda='composer dumpautoload'

# PHPStan
alias stan='php -d "memory_limit=-1" vendor/bin/phpstan'
alias stanbase='php -d "memory_limit=-1" vendor/bin/phpstan analyse --configuration phpstan.neon --generate-baseline'

function aex() {
  gco -b AEX-$1
}

Function sphp() {
  brew link --overwrite --force php@$1
}

Function livecommand() {
  aws ecs execute-command --interactive --command "$1" --cluster street-live-ecs --container php-fpm --task $(aws ecs list-tasks --cluster street-live-ecs --service-name street-live-worker-service | jq '.taskArns[0]' | xargs basename)
}

function streetconnect() {
  aws ecs execute-command --interactive --command bash --cluster street-$1-ecs --container php-fpm --task $(aws ecs list-tasks --cluster street-$1-ecs --service-name street-$1-app-service | jq '.taskArns[0]' | xargs basename)
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fpath=($fpath "/Users/domioanna/.zfunctions")


# Herd injected PHP binary.
export PATH="/Users/domioanna/Library/Application Support/Herd/bin/":$PATH
export PHP_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/":$PHP_INI_SCAN_DIR


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/81/"


# Herd injected PHP 8.0 configuration.
export HERD_PHP_80_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/80/"


# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/74/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/domioanna/Library/Application Support/Herd/config/php/84/"
