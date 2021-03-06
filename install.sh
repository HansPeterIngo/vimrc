#!/bin/sh

BASEDIR=$(dirname "$0")
INSTALL_DIR="$HOME/.vim_runtime"

if [ "$BASEDIR" != "$INSTALL_DIR" ]; then
  if [ -d "$INSTALL_DIR" ]; then
    echo "Installation canceled, $INSTALL_DIR already exists!"
    exit
  fi
  echo "Copying $BASEDIR to $INSTALL_DIR ..."
  cp -R $BASEDIR $INSTALL_DIR
  cd $INSTALL_DIR
  BASEDIR=$INSTALL_DIR
fi

$INSTALL_DIR/install_vimrc.sh

LOCAL_VIMRC="$INSTALL_DIR/vimrc.d/local.vim"
touch $LOCAL_VIMRC

ASK_POWERLINE_FONT_INSTALLATION=true
while true; do
  read -p "Do you wish to use powerline fonts? [yn] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* )
      printf "\" Don't use powerline fonts\nlet g:airline_powerline_fonts = 0\n" >> $LOCAL_VIMRC
      ASK_POWERLINE_FONT_INSTALLATION=false
      break;;
    * ) echo "Please answer yes or no.";;
  esac
done

if [ $ASK_POWERLINE_FONT_INSTALLATION = true ]; then
  while true; do
    read -p "Do you wish to install powerline fonts? [yn] " yn
    case $yn in
      [Yy]* ) $BASEDIR/install_powerline_fonts.sh; break;;
      [Nn]* ) break;;
      * ) echo "Please answer yes or no.";;
    esac
  done
fi

touch ~/.ctrlp

vim -u $INSTALL_DIR/maintenance.vim +PlugInstall +qall

if ! [ -x "$(command -v ag)" ]; then
  printf "It is recommended to install ag, the_silver_searcher.\n"
  printf "github: https://github.com/ggreer/the_silver_searcher\n"
  printf "debian: apt-get install silversearcher-ag\n"
  printf "fedora: dnf install the_silver_searcher\n"
  printf "arch: pacman -S the_silver_searcher\n"
  printf "\n"
fi

if ! [ -x "$(command -v ctags)" ]; then
  printf "It is recommended to install ctags.\n"
  printf "debian: sudo apt-get install exuberant-ctags\n"
  printf "fedora: dnf install ctags\n"
  printf "arch: pacman -S ctags\n"
  printf "\n"
fi
