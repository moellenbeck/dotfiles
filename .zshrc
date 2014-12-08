# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="moellenbeck"
ZSH_THEME="fino-time"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow coffee node npm screen osx sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=.:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/sbin


[[ -s "/Users/moellenbeck/Dropbox/_tools/_profile_add_ons" ]] && source "/Users/moellenbeck/Dropbox/_tools/_profile_add_ons"

# clickworker-com vpn start
eval `ssh-agent` 1> /dev/null
ssh-add ~/.ssh/id_rsa 2> /dev/null
ssh-add ~/.ssh/id_rsa_humangrid 2> /dev/null
ssh-add ~/.ssh/huf/backend-mq 2> /dev/null
ssh-add ~/.ssh/huf/backend-mq-adapter 2> /dev/null
ssh-add ~/.ssh/huf/backend-mq-agent-core 2> /dev/null

[[ -s "/Users/moellenbeck/.nvm/nvm.sh" ]] && source "/Users/moellenbeck/.nvm/nvm.sh"

# osx spezific to use 32 python version
export VERSIONER_PYTHON_PREFER_32_BIT=yes

[[ -s "/usr/local/share/zsh/site-functions/git-flow-completion.zsh" ]] && source "/usr/local/share/zsh/site-functions/git-flow-completion.zsh"
