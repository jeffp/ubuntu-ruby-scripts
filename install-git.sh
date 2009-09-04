sudo apt-get -y install git-core
git config --global user.name "username"
git config --global user.email "user@email.com"
RDIR=`pwd`
cd ~/.ssh
ssh-keygen -t dsa
echo 
echo Add this public key to your github account
echo 
echo `cat id_dsa.pub`
echo
