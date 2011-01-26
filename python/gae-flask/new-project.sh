ENV_DIR=$WORKON_HOME/$PROJECT

BIN=$(cd ${0%/*} && pwd -P)
PRJ_DIR=$(cd $BIN/.. && pwd -P)

echo $BIN
echo $PRJ_DIR


echo "if you don't already have distribute, virtualenv, and pip installed run pre-requisities.sh first"
echo ""
if [ $# != 2 ] 
    echo "usage: new-project.sh [workon-project-name] [gae-application-name] [directory, defaults to pwd]"
    echo 
    read -p "hit return to continue"



cp $BIN/gae.pth $WORKON_HOME/$PROJECT/lib/python2.5/site-packages

echo virtualenv --no-site-packages --python=python2.5 $WORKON_NAME 
