#!/bin/bash
# Diego Pereira Grassato
# Data: 31/08/2012
#
clear
echo "Instalação do gerenciador de plugins Pathogen e de alguns plugins"
echo "Removendo Lixo"
if [ -d ~/.vim/plugin ];then
  rm -rf ~/.vim/plugin
fi

if [ -d ~/.vim/doc ];then
  rm -rf ~/.vim/doc
fi
echo "Criando ambiente..."
if [ ! -d ~/.vim/autoload ];then
  mkdir -p  ~/.vim/autoload
  echo "Baixando pathogen...."
  curl -so ~/.vim/autoload/pathogen.vim  https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi
echo "Criando diretorio dos plugins ~/.vim/bundle ..."
if [ ! -d ~/.vim/bundle ];then
  mkdir -p ~/.vim/bundle
fi
echo "Fazendo backup do ~/.vimrc "
if [ -f ~/.vimrc ];then
  mv ~/.vimrc ~/.vimrc.old
fi

echo "Ativando Pathogen  ~/.vimrc "
echo "call pathogen#infect()
syntax on
filetype plugin indent on" > ~/.vimrc

git remote add origin https://github.com/diegograssato/vim-tools.git
git push -u origin master


clear
echo "Baixando alguns Plugins Uteis...."
echo "Criando diretorio dos plugins ~/.vim/bundle "
if [  -d ~/.vim/bundle ];then
  cd ~/.vim/bundle
  git clone git://github.com/tpope/vim-rails.git
  git clone git://github.com/taq/vim-ruby-snippets.git 
  git clone git://git.wincent.com/command-t.git
  git clone git://github.com/msanders/snipmate.vim.git
  git clone git://github.com/tpope/vim-vividchalk.git
  git clone git://github.com/scrooloose/nerdtree.git
  git clone git://github.com/tpope/vim-fugitive.git
  git clone git://github.com/vim-scripts/camelcasemotion.git
  git clone git://github.com/vim-scripts/FuzzyFinder.git
  git clone git://github.com/gregsexton/gitv.git
  git clone git://github.com/vim-scripts/L9.git 
  git clone git://github.com/scrooloose/nerdcommenter.git 
  git clone git://github.com/vim-scripts/taglist.vim.git 
  git clone git://github.com/vim-scripts/VimClojure.git 
  git clone git://github.com/taq/vim-refact.git 
  git clone git://github.com/tpope/vim-ragtag.git 
  git clone git://github.com/mattn/zencoding-vim.git 
  git clone git://github.com/taq/traquitana.git 
    
fi
clear
echo
echo "Baixando o atualizador de plugins by Taq"
cd ~/
git clone git://github.com/taq/vim-bundles-updater.git 
if [ -d vim-bundles-updater ];then
  chmod +x vim-bundles-updater/update_vim_bundles
  cp vim-bundles-updater/update_vim_bundles /usr/sbin/ 
fi
echo 
