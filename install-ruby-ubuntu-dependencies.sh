sudo apt-get -y update
sudo apt-get -y install default-jre

sudo apt-get -y install subversion

sudo apt-get -y build-dep ruby1.8 ruby1.9

wget http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz
tar xvzf rubygems-1.3.5.tgz
sudo ln -s rubygems-1.3.5 rubygems
sudo rm -f rubygems-1.3.5.tgz

#sqlite3 and build dependencies
sudo apt-get -y install sqlite3
sudo apt-get -y build-dep sqlite3-ruby

#nokogiri - webrat build dependencies
sudo apt-get -y install libxslt1-dev libxml2-dev

sudo ln -sf $PWD/set-ruby-version.sh /usr/local/bin/rver


