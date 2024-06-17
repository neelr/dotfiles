# Terminal Title and Greeting
echo -n -e "\033]0;Hack Zone\007"
echo "Hey Neel,"
echo
fortune -s | cowsay -f $(ls /opt/homebrew/Cellar/cowsay/3.04_1/share/cows | gshuf -n 1) | lolcat --seed=100
echo

# Path Configuration
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$PATH:/Users/neelredkar/google-cloud-sdk/bin"
export PATH="$PATH:/Users/neelredkar/go/bin"
export PATH="$PATH:/Users/neelredkar/anaconda3/condabin"
export PATH="$PATH:/Library/TeX/texbin"
export PATH="/usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/mysql-8.0.21-macos10.15-x86_64/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$(yarn global bin):$PATH"
export PATH="/Users/neelredkar/spicetify-cli:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# Oh My Zsh Configuration
export ZSH="/Users/neelredkar/.oh-my-zsh"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
PROMPT='`if [ $? = 0 ]; then echo " ${fg[green]}uwu "; else echo " ${fg[red]}Owo "; fi` '
PROMPT+='%{[01m%}%{$FG[141]%}( %~ ) $(git_prompt_info) %{$FG[159]%}λ%{$reset_color%} '
RPROMPT="[%D{%m/%f/%y} | %D{%L:%M:%S}]"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls='ls -G'
alias ll="ls -al"
alias sloc="git ls-files \"*.go*\" \"*.js*\" | xargs wc -l"
alias restart-wifi='sudo ifconfig en0 down && sudo ifconfig en0 up'
alias webvalley='ssh -L 8888:localhost:8888 -p 5012 wvuser@lab-05e14aa7-8738-4831-aeb4-ba711d97c567.eastus.cloudapp.azure.com'
alias vf='cfiles'
alias frappox="~/Documents/Git/frappox/target/release/frappox"
alias pdfjoin="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/MacOS/join"

# Functions
ntfs () {
    sudo /usr/local/bin/ntfs-3g /dev/$1 /Volumes/NTFS -olocal -oallow_other
}
connect () {
    ssh neelr@192.168.1.65
    expect "neelr@192.168.1.65's password: "
    send "hacker01"
}
conn () {
    ssh -l pi proxy21.rt3.io -p 33410
}
c++ () {
    rm a.out
    g++ *
    ./a.out
}
scm () {
    scheme --quiet < $1
}
hub () {
    cd ~/Documents/Git
}
clone () {
    git clone https://github.com/$1/$2
    cd $2
}
llm () {
    /Users/neelredkar/Documents/Git/llama.cpp/main -m /Users/neelredkar/Documents/Git/llama.cpp/models/7B/ggml-model-q4_0.bin \
      -t $2 \
      -n $3 \
      -p $1
}

# Environment Configuration
export GPG_TTY=$(tty)
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Conda Initialization
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/local/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# Miscellaneous Configuration
eval "$(thefuck --alias)"
eval "$(/opt/homebrew/bin/brew shellenv)"
# if [ "$TMUX" = "" ]; then tmux; fi
ENABLE_CORRECTION="true"
[ -f "/Users/neelredkar/.ghcup/env" ] && source "/Users/neelredkar/.ghcup/env" # ghcup-env

# Timeout for zle reset-prompt
TMOUT=1
TRAPALRM() {
    zle reset-prompt
}

# bun completions
[ -s "/Users/neelredkar/.bun/_bun" ] && source "/Users/neelredkar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
