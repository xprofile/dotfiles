#!/bin/sh

CURDIR=`pwd`

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_backup
    echo "backup origin vimrc"
fi

ln -s ${CURDIR}/vimrc ~/.vimrc

