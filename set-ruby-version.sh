if [ "$1" = "1.8.6" ] || [ "$1" = "1.8.7" ] || [ "$1" = "1.9.1" ]; then
 sudo ln -sf /opt/ruby$1/bin/* /usr/local/bin
elif [ -n "$1" ]; then
 echo $1 version not supported
 exit
fi
ruby -v
if [ -z "$1" ]; then
 echo usage: set-ruby-version [version: 1.8.6, 1.8.7, 1.9.1]
fi

