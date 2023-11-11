# Created by newuser for 5.8.1
setopt nonomatch
setopt histappend
HISTFILE="$HOME/.zsh_history"
export MAKEFLAGS="-j $(nproc)"
export PATH=/usr/lib/ccache:$PATH 
export PATH=$PATH:/home/yzz/.local/bin
#plugin
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#QT
export QT_QPA_PLATFORM=wayland
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
export NPC_HOME=/home/yzz/ysyx-workbench/npc
export PATH="uer/bin/ccache:$PATH"
#JAVA
export JAVA_HOME=/usr/lib/jvm/java-19-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
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
alias ls='ls -F'
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
##tool
alias rv32gcc="riscv64-linux-gnu-gcc -march=rv32g -mabi=ilp32"
alias rvobjdump="riscv64-linux-gnu-objdump"
alias record='rr record'
alias replay='rr replay'
alias memcheck='valgrind --tool=memcheck'
alias callgrind='valgrind --tool=callgrind'
alias cachegrind='valgrind --tool=cachegrind'
##git
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gck='git checkout'
alias gb='git branch'
alias gl='git log'
alias gll='git log -n 20 --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) %G? - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'
alias gp='git push'
alias gd='git diff'
alias gpl='git pull'
##tmux
alias tl='tmux list-sessions'
alias tkss='tmux kill-session'
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
##app
alias matlab="/usr/local/MATLAB/R2023b/bin/matlab"
alias pycharm="/opt/pycharm-community-2023.2.2/bin/pycharm.sh"
alias pyuic='python3 -m PyQt5.uic.pyuic'
alias idea='/opt/idea/idea-IC-232.10072.27/bin/idea.sh'
alias obsidian='/opt/obsidian/Obsidian-1.4.14.AppImage'
alias clash='clash/Clash\ for\ Windows-0.20.38-x64-linux/./cfw'
alias zotero='/opt/Zotero-6.0.30_linux-x86_64/Zotero_linux-x86_64/./zotero'
alias wechat='sh bin/Wechat.sh'
