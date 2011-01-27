#!/bin/bash

echo "this will install python pre-requisites: distribute, pip, virtualenv, virtualenv_wrappers"
read -p "press any key to continue"


echo installing distribute, a better alternative to setuptools
curl -O http://python-distribute.org/distribute_setup.py
sudo python distribute_setup.py

echo installing pip for python package management
sudo easy_install pip

echo installing virtualenv for project-scoped python environments
sudo easy_install --upgrade virtualenv

echo installing virtualenvwrapper for "workon" and tab completion workflow in bash
sudo pip install --upgrade virtualenvwrapper

echo WORKON_HOME=~/.virtualenvs for project-scope python virtual environments
mkdir -p ~/.virtualenvs

echo adding WORKON_HOME to .bash_profile
echo export WORKON_HOME=$HOME/.virtualenvs >> ~/.bash_profile
echo adding . virtualenvwrapper.sh to ~/.bash_profile
echo . /usr/local/bin/virtualenvwrapper.sh >> ~/.bash_profile
. ~/.bash_profile

echo the next line should say WORKON_HOME = ~/.virtualenvs or equivalent 
echo check: WORKON_HOME = $WORKON_HOME    





