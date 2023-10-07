# Created by newuser for 5.8.1
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
#some ailas
alias l='ls -cF'
alias la='ls -a'
alias ll='la -l'

alias wget='wget -c'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gck='git checkout'
alias gb='git branch'
alias gl='git log'
alias gp='git push'
alias gd='git diff'
alias gpl='git pull'

alias matlab="/usr/local/MATLAB/R2023b/bin/matlab"
alias pycharm="/opt/pycharm-community-2023.2.2/bin/pycharm.sh"
alias pyuic='python3 -m PyQt5.uic.pyuic'

