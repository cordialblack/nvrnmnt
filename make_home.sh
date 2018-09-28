#!/bin/bash

files=(".bash_profile" ".bashrc" ".bash_alisases")

for i in ${files[@]}; do

	if [ -f $HOME/$i.old ]; then
		rm -f $HOME/$i.old
	fi

	if [ -f $HOME/$i ]; then
		mv $HOME/$i $HOME/$i.old
	fi
done

ln -s $PWD/bash_profile $HOME/.bash_profile
ln -s $PWD/bashrc $HOME/.bashrc
