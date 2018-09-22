# vagrant-centos7-ruby
vagrantでCentOS7のruby環境構築用のファイル

# 実行手順
1 vagrant box add centos7.1 https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box
2 vagrant up 
3 vagrant ssh

# 補足
/srv/shareフォルダを共有フォルダにしていますので、共有したいときはそこを使う
