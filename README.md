#Config

##Introduction

This is a configuration file that includes zsh, vim, and tmux.

##Project file 
```

.zshrc
.vim
├── autoload
│   └── plug.vim
└── plugged
    ├── ack.vim
    ├── ctrlp.vim
    ├── lightline-bufferline
    ├── lightline.vim
    ├── nerdtree
    ├── tagbar
    ├── undotree
    └── vim-easymotion
.vimrc
.tmux
├── LICENSE.MIT
├── LICENSE.WTFPLv2
├── plugins
│   └── tpm
└── README.md
README.md
```

##Installation

git clone https://github.com/Zephyr-yzz/config.git

sudo apt-get install zsh
sudo apt-get install zsh-autosuggestions
sudo apt-get install zsh-syntax-highlighting
sudo apt-get install zsh-theme-powerlevel9k
sudo apt-get install vim
sudo apt-get install tmux

##
chsh -s /bin/zsh
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local
<!-- Please modify .tmux.conf.local to change the tmux configuration. -->
