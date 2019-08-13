#!/bin/bash
cp -r /shares/mar/.ssh $HOME
ln -s /shares/mar/.bashrc $HOME/.bash_profile

ln -s /shares/mar $HOME

DIRS=((Wat Youtube Photos))
for dir in "${DIRS[@]}"; do
	ln -s "/shares/mar/$dir" "$HOME"
done

ln -s /shares/mar/root/usr/bin $HOME
