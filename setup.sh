#!/usr/bin/bash

# install tools
echo "install tools?(y/n)"
read ans1
case $ans1 in
    y)
        . install_tools.sh
		;;
    *)
	    ;;
esac

# deploy
echo "deploy dotfiles?(y/n)"
read ans2
case $ans2 in
    y)
        . deploy.sh
		;;
    *)
	    ;;
esac

# initialize
echo "initialize dotfiles?(y/n)"
read ans3
case $ans3 in
    y)
        . init.sh
		;;
    *)
	    ;;
esac

