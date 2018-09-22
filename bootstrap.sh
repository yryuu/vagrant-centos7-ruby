sudo yum -y update
sudo yum -y install git-all openssl-devel readline-devel sqlite gcc gcc-c++
sudo yum -y install sqlite-devel
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
echo 'gem: --no-ri --no-rdoc' > ~/.gemrc
exec $SHELL


RUBY_BUILD_CURL_OPTS=--tlsv1.2 rbenv install 2.5.1
RUBY_BUILD_CURL_OPTS=--tlsv1.2 rbenv global 2.5.1
gem install sqlite3 -v '1.3.13'
gem install bundler
gem install rails

rpm -Uvh https://rpm.nodesource.com/pub_4.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm
yum -y install nodejs