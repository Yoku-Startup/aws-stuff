# http://aws-labs.com/ubuntu-install-java-8/

# install java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer

# set up environment variables
sudo apt-get -y install oracle-java8-set-default

# test
java -version