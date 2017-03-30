#!/bin/sh




init_for_ubuntu()
{
    sudo apt install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

    sudo apt-get install silversearcher-ag

    sudo apt-get install autojump
    #config autojump for Debian-derived distros
    echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

    curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
}

init_for_centos()
{
    #oh my zsh
    sudo yum install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

    #ag
    sudo yum install epel-release.noarch the_silver_searcher

    #auto jump
    sudo yum install autojump-zsh
    #config autojump for Debian-derived distros
    echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

    #vim
    #curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
    sh <(curl https://j.mp/spf13-vim3 -L)
}

init_for_mac()
{
    #oh my zsh
    sudo yum install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

    #ag
    brew install the_silver_searcher

    #auto jump
    brew install autojump

    #vim
    #curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
    sh <(curl https://j.mp/spf13-vim3 -L)
}


init_for_rc()
{
    echo "source /home/junqizhang/junqizhangconf/junqizhang.rc" >> ~/.zshrc
    source ~/.zshrc

    ln -s vimrc.bundles.local ~/.vimrc.bundles.local
    rm ~/.vimrc.local
    ln -s vimrc.local ~/.vimrc.local
}

init_for_rc
