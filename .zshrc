# Created by newuser for 5.8.1
setopt histappend
HISTFILE="$HOME/.zsh_history"
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#ROS2-humble
export LANG=en_US.UTF-8
source /opt/ros/humble/setup.zsh
export ROS_DOMAIN_ID=0
export ROS_LOCALHOST_ONLY=1
source /usr/share/colcon_cd/function/colcon_cd.sh
export _colcon_cd_root=/opt/ros/humble/
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
#ysyx
export NEMU_HOME=/home/yzz/ysyx-workbench/nemu
export AM_HOME=/home/yzz/ysyx-workbench/abstract-mac
export NVBOARD_HOME=/home/yzz/ysyx-workbench/nvboard
#autojump
[[ -s /home/yzz/.autojump/etc/profile.d/autojump.sh ]] && source /home/yzz/.autojump/etc/profile.d/autojump.sh
#some ailas
alias neo='neofetch'

alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias install='sudo apt-get install'

alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../..'
alias ls='ls -cF'
alias la='ls -a'
alias ll='la -l'
alias grep='grep -n --color=auto'
alias wget='wget -c'
alias targz='tar -xzvf'
alias tarbz2='tar -jxvf'
alias find='find . -name'
alias mk='man -k'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gck='git checkout'
alias gb='git branch'
alias gl='git log'
alias gll='git log -n 20 --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) %G? - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'
alias gp='git push'
alias gd='git diff'
alias gpl='git pull'

alias matlab="/usr/local/MATLAB/R2023b/bin/matlab"
alias pycharm="/opt/pycharm-community-2023.2.2/bin/pycharm.sh"
alias pyuic='python3 -m PyQt5.uic.pyuic'
alias obsidian='/opt/obsidian/Obsidian-1.4.14.AppImage'
alias clash='clash/Clash\ for\ Windows-0.20.38-x64-linux/./cfw'
alias wechat='sh bin/Wechat.sh'
