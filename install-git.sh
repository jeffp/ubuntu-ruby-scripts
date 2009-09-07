if [ -z $1 ] || [ -z $2 ]; then
 echo usage: install-git.sh [username] [email address]
 exit
fi
sudo apt-get -y install git-core
git config --global user.name "$1"
git config --global user.email "$2"
RDIR=`pwd`
cd ~/.ssh
ssh-keygen -t dsa
echo 
echo git installed and configured
echo -- for user \'$1\' at email \'$2\'
echo Add this public key to your github account
echo 
echo `cat id_dsa.pub`
echo
