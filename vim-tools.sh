#!/bin/bash
# Diego Pereira Grassato
# Data: 31/08/2012
#
clear
echo "=================================================================================" 
echo
echo "	Instalação do gerenciador de plugins Pathogen e de alguns plugins"
echo
echo "=================================================================================" 
echo; echo "Removendo Lixo ..."
if [ -d ~/.vim/plugin ];then
  rm -rf ~/.vim/plugin
fi

if [ -d ~/.vim/doc ];then
  rm -rf ~/.vim/doc
fi
echo "..................................................[ OK ]" 
echo "Criando ambiente..."
if [ ! -d ~/.vim/autoload ];then
  mkdir -p  ~/.vim/autoload
  echo "Baixando pathogen...."
  curl -so ~/.vim/autoload/pathogen.vim  https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo "..................................................[ OK ]"
fi
echo "Criando diretorio dos plugins ~/.vim/bundle ..."
if [ ! -d ~/.vim/bundle ];then
  mkdir -p ~/.vim/bundle
fi
echo "..................................................[ OK ]"
echo "Fazendo backup do ~/.vimrc ..."
if [ -f ~/.vimrc ];then
  mv ~/.vimrc ~/.vimrc.old
  echo "Ativando Pathogen  ~/.vimrc ..."
  echo "call pathogen#infect()
  syntax on
  filetype plugin indent on" > ~/.vimrc
  echo "..................................................[ OK ]"
fi




echo "Baixando alguns Plugins Uteis em ~/.vim/bundle ...."

if [  -d ~/.vim/bundle ];then
    cd ~/.vim/bundle
    if [ -d vim-rails ];then
      echo " * Ja possui vim-rails"
    else
      git clone git://github.com/tpope/vim-rails.git
    fi

    if [ -d vim-ruby-debugger ];then
      echo " * Ja possui vim-ruby-debugger"
    else
      git clone git://github.com/astashov/vim-ruby-debugger.git 
    fi

    if [ -d supertab ];then
      echo " * Ja possui supertab"
    else
      git clone git://github.com/ervandew/supertab.git 
    fi

    if [ -d tabular ];then
      echo " * Ja possui tabular"
    else
      git clone git://github.com/godlygeek/tabular.git 
    fi

    if [ -d vim-javascript ];then
      echo " * Ja possui vim-javascript"
    else
      git clone git://github.com/pangloss/vim-javascript.git 
    fi

    if [ -d textile.vim ];then
      echo " * Ja possui textile.vim"
    else
      git clone git://github.com/timcharper/textile.vim.git 
    fi

    if [ -d vim-cucumber ];then
      echo " * Ja possui vim-cucumber"
    else
      git clone git://github.com/tpope/vim-cucumber.git 
    fi

    if [ -d vim-git ];then
      echo " * Ja possui vim-git"
    else
      git clone git://github.com/tpope/vim-git.git 
    fi

    if [ -d vim-haml ];then
      echo " * Ja possui vim-haml"
    else
    git clone git://github.com/tpope/vim-haml.git 
    fi

    if [ -d vim-markdown ];then
      echo " * Ja possui vim-markdown"
    else
      git clone git://github.com/tpope/vim-markdown.git 
    fi

    if [ -d vim-repeat ];then
      echo " * Ja possui vim-gi"
    else
      git clone git://github.com/tpope/vim-repeat.git 
    fi

    if [ -d vim-surround ];then
      echo " * Ja possui vim-surround"
    else
      git clone git://github.com/tpope/vim-surround.git 
    fi

    if [ -d vim-matchit ];then
      echo " * Ja possui vim-matchit"
    else
      git clone git://github.com/tsaleh/vim-matchit.git 
    fi

    if [ -d vim-shoulda ];then
      echo " * Ja possui vim-shoulda"
    else
      git clone git://github.com/tsaleh/vim-shoulda.git  
    fi

    if [ -d vim-tmux ];then
      echo " * Ja possui vim-tmux"
    else
      git clone git://github.com/tsaleh/vim-tmux.git  
    fi

    if [ -d vim-ruby ];then
      echo " * Ja possui vim-ruby"
    else
      git clone git://github.com/vim-ruby/vim-ruby.git 
    fi

    if [ -d Gist.vim ];then
      echo " * Ja possui Gist.vim"
    else
      git clone git://github.com/vim-scripts/Gist.vim.git 
    fi

    if [ -d vim-ruby-snippets ];then
      echo " * Ja possui vim-ruby-snippets"
    else
      git clone git://github.com/taq/vim-ruby-snippets.git 
    fi

    if [ -d command-t ];then
      echo " * Ja possui command-t"
    else
      git clone git://git.wincent.com/command-t.git 
    fi

    if [ -d snipmate.vim ];then
      echo " * Ja possui snipmate.vim"
    else
      git clone git://github.com/msanders/snipmate.vim.git 
    fi

    if [ -d vim-vividchalk ];then
      echo " * Ja possui vim-vividchalk"
    else
      git clone git://github.com/tpope/vim-vividchalk.git 
    fi

    if [ -d nerdtree ];then
      echo " * Ja possui nerdtree"
    else
      git clone git://github.com/scrooloose/nerdtree.git  
    fi

    if [ -d vim-fugitive ];then
      echo " * Ja possui vim-fugitive"
    else
      git clone git://github.com/tpope/vim-fugitive.git  
    fi

    if [ -d camelcasemotion ];then
      echo " * Ja possui camelcasemotion"
    else
      git clone git://github.com/vim-scripts/camelcasemotion.git  
    fi

    if [ -d FuzzyFinder ];then
      echo " * Ja possui FuzzyFinder"
    else
      git clone git://github.com/vim-scripts/FuzzyFinder.git 
    fi
    
    if [ -d gitv ];then
      echo " * Ja possui gitv"
    else
      git clone git://github.com/gregsexton/gitv.git 
    fi

    if [ -d L9 ];then
      echo " * Ja possui L9"
    else
      git clone git://github.com/vim-scripts/L9.git 
    fi

    if [ -d nerdcommenter ];then
      echo " * Ja possui nerdcommenter"
    else
      git clone git://github.com/scrooloose/nerdcommenter.git 
    fi

    if [ -d VimClojure ];then
      echo " * Ja possui VimClojure"
    else
      git clone git://github.com/vim-scripts/VimClojure.git 
    fi

    if [ -d vim-refact ];then
      echo " * Ja possui vim-refact"
    else
      git clone git://github.com/taq/vim-refact.git 
    fi

    if [ -d vim-ragtag ];then
      echo " * Ja possui vim-ragtag"
    else
      git clone git://github.com/tpope/vim-ragtag.git 
    fi

    if [ -d zencoding-vim ];then
      echo " * Ja possui zencoding-vim"
    else
      git clone git://github.com/mattn/zencoding-vim.git   
    fi
  
fi
 echo "..................................................[ OK ]"
echo
cd ~/
if [ ! -d vim-bundles-updater ];then
  echo
  echo "Baixando o atualizador de plugins by Taq ..."
  
  git clone git://github.com/taq/vim-bundles-updater.git 
  chmod +x vim-bundles-updater/update_vim_bundles
  cp vim-bundles-updater/update_vim_bundles /usr/sbin/ 
  echo " * Script instalado, execute o comando update_vim_bundles para atualizar os seus plugins"
 else
  echo " * Script ja esta instalado, execute o comando update_vim_bundles para atualizar os seus plugins"
fi
 
echo 
