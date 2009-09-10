VER=$1
RDIR=/opt/ruby$VER
if [ -e "$RDIR" ]; then
 sudo ln -sf $RDIR/bin/* /usr/local/bin
elif [ -n "$1" ]; then
 echo $1 version not installed
 exit
fi
ruby -v
if [ -z "$1" ]; then
 echo usage: rver [version: 1.8.6, 1.8.7, 1.9.1]
fi

