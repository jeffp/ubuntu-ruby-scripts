MAJVER=1.8
VER=$MAJVER.6
SRCDIR=ruby$VER
RUBYFILE=ruby-$VER-p383

if [ ! -e "rubygems" ]; then
 echo run install-ruby-ubuntu-dependencies.sh first!
 echo
 exit
fi

echo Installing and Configuring $SRCDIR with Rails
echo

wget ftp://ftp.ruby-lang.org/pub/ruby/$MAJVER/$RUBYFILE.tar.gz
tar xvzf $RUBYFILE.tar.gz
rm $RUBYFILE.tar.gz
ln -s $RUBYFILE $SRCDIR

cd $SRCDIR
autoconf
./configure --prefix=/opt/$SRCDIR
sudo make
sudo make install
cd ..

RPATH=/opt/$SRCDIR/bin
OPTS="--no-ri --no-rdoc"

#install rubygems
cd rubygems
sudo $RPATH/ruby setup.rb
cd ..

sudo $RPATH/gem sources -a http://gems.github.com

sudo $RPATH/gem install rails $OPTS
sudo $RPATH/gem install sqlite3-ruby $OPTS

sudo $RPATH/gem install rake $OPTS
sudo $RPATH/gem install rspec rspec-rails $OPTS
sudo $RPATH/gem install webrat launchy $OPTS
sudo $RPATH/gem install test-unit -v=1.2.3 $OPTS

sudo $RPATH/gem install ruby-debug-ide $OPTS

sudo $RPATH/gem install thin $OPTS

echo .................................
echo $SRCDIR Installed
echo to use $VER -- 
echo  run rver $VER
echo or
echo  add /opt/$SRCDIR/bin to the PATH
echo .................................
