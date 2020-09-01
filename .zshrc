# If you come from bash you might have to change your $PATH.

alias python="python3.7"
alias pip="pip3.7"
alias ll="ls -alF"
CHROMEDRIVER="/Users/Kernel/Documents/ZhangQian/Study/hogwarts/selenium"
MAVEN_HOME="/Users/Kernel/sofeware/apache-maven-3.6.2"
PYTHON_HOME="/Library/Frameworks/Python.framework/Versions/3.7/bin"
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home"
ANDROID_HOME="/Users/Kernel/Library/Android/sdk"
ANDROID_BT=$ANDROID_HOME/build-tools/29.0.2
ANDROID_PT=$ANDROID_HOME/platform-tools
#NODE_HOME="/Users/Kernel/local/node-v0.10.31"
#GROOVY_HOME='/usr/local/opt/groovy/libexec'
#MYSQL_HOME='/usr/local/Cellar/mysql/8.0.13'
MAIL_USERNAME="qilaidi@vip.qq.com"
MAIL_PASSWORD="vmmepdmxtbosbibh"
FLASKY_ADMIN="qilaidi@vip.qq.com"
ZSH="/Users/Kernel/.oh-my-zsh"
PATH=$HOME/bin:$PYTHON_HOME:$JAVA_HOME:$MAVEN_HOME/bin:$ANDROID_HOME:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_PT:$XCODE_HOME:$CHROMEDRIVER:$PATH
export PATH MAIL_USERNAME MAIL_PASSWORD FLASKY_ADMIN ZSH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
# export ZSH="/Users/Kernel/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME=robbyrussell
ZSH_THEME=agnoster

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting # 必须在最后
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
