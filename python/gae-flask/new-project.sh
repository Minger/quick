#!/bin/bash

echo "if you don't already have distribute, virtualenv, and pip installed run pre-requisities.sh first"
echo ""
echo "usage: new-project.sh [workon-project-name] [gae-application-name] [directory, defaults to ~/workon-project-name]"
echo ""

PROJECT=$1
APPID=$2
PRJ_DIR="$3"
ENV_DIR="$WORKON_HOME/$PROJECT"

echo workon project: $PROJECT
echo gae-appid: $APPID
echo project install dir: $PRJ_DIR
echo virtualenv dir: $ENV_DIR

read -p "hit any key to continue"

echo "creating virtualenv" 

echo virtualenv --no-site-packages --python=python2.5 $ENV_DIR 
virtualenv --no-site-packages --python=python2.5 $ENV_DIR 

# if no virtualenvwrapper then mkvirtualenv --no-site-packages --distribute $PROJECT

source /usr/local/bin/virtualenvwrapper.sh

echo workon $PROJECT 
echo   will activate the virtual environment and cd to $PRJ_DIR
# cd to the project dir after 'workon PROJECT'
echo cd $PRJ_DIR > $ENV_DIR/bin/postactivate

workon $PROJECT
# cd $PRJ_DIR

echo installing PIL for the GAE SDK imaging API
pip -E $ENV_DIR install pil
# pip install pil

pip install ipython

# cp $BIN/gae.pth $WORKON_HOME/$PROJECT/lib/python2.5/site-packages

echo git clone https://github.com/so/flask-gae-skeleton.git $PRJ_DIR
git clone https://github.com/so/flask-gae-skeleton.git $PRJ_DIR



echo fetching submodules 
echo git submodule update --init
git submodule update --init

echo "NOTE: set your appengine application id in app.yaml"
echo "NOTE: change the 'secret_key' in settings.py"
echo ""
echo "NOTE: you should remove the skeleton app git remote origin and add one for your project, eg:"
echo "         git remote rm origin"
echo "         git remote add origin <new_remote like git@github.com:`whoami`/$PROJECT.git>"
echo ""
echo "THEN: "
echo       git commit -am "initial setup"
echo       git push origin master
echo 




