#!/bin/sh
#Scripting by DNA 6/21/19
#Installs Homebrew to Executing User's Home Directory
#This isn't recommended and is intended as a work-around in particularly "locked-down" environments 
#Requires Xcode Command Line Tools

#Install Homebrew to Your Home Directory
mkdir ~/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

#Add this line to your Bash Profile located at ~/.profile
echo "export PATH=${HOME}/homebrew/bin:${PATH}" >> ~/.profile

echo "



Close this Terminal, open another, and then run brew doctor!"


