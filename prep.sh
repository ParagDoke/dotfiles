#!/bin/bash -ex
echo "Starting `basename $0`"
cd $HOME
for f in .bashrc .vimrc .tmux.conf; do
    curl --remote-name "https://raw.githubusercontent.com/ParagDoke/dotfiles/master/$f"
done
echo "Finished `basename $0`"
