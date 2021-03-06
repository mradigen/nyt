# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/aadivishnu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#(cat ~/.cache/wal/sequences &)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
alias zshconf="kak ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias bspconf="kak ~/.config/bspwm/bspwmrc"
alias sxconf="kak ~/.config/sxhkd/sxhkdrc"
alias i3conf="kak ~/.config/i3/config"
alias pbconf="kak ~/.config/polybar/config"
alias PASSWORDLESS="/bin/brightness"
alias asdf="setxkbmap dvorak"
alias aoeu="setxkbmap us"
alias c="clear"
alias cls="clear"
alias pro="setup pro; exit"
alias school="setup school; exit"
alias mnt="sudo mount -o umask=0,uid=aadivishnu,gid=aadivishnu $1 $2"
alias umnt="sudo umount $1"
alias reset="reset; cat ~/.cache/wal/sequences"
alias fixtheme="exec ~/.config/alacritty/fixtheme.sh ~/.config/alacritty/alacritty.yml"
alias pak="systemctl --user stop pulseaudio.socket; systemctl --user stop pulseaudio.service"
alias pas="systemctl --user start pulseaudio.socket; systemctl --user start pulseaudio.service"
alias nlyt="exec $HOME/Desktop/nlyt/code/compile"
alias music="cd ~/Music/YT; youtube-dl -x --yes-playlist --audio-format flac --audio-quality 0 -o '%(title)s.%(ext)s' $1"
alias dump="sudo pacman -S $1"
alias yeet="sudo pacman -Rs $1"

# Environment Variables
export ALSA_CARD=PCH
export PATH="$PATH:$HOME/.android/platform-tools"
export NLYT="$HOME/Desktop/nlyt"
#EDITOR=/usr/bin/kak
EDITOR="/home/aadivishnu/Documents/Applications/Sublime\ Text\ 3/sublime_text"

# startx if we are on tty1
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

# Startup
#Enters a line at top
echo
#PF_COL1=2 PF_COL2=0 PF_COL3=0 pfetch
#PF_COL1=3 PF_COL2=2 PF_COL3=4 pfetch
neofetch

### ARCHIVE EXTRACTION
# usage: ex <file>
ex() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
