# http://www.wikihow.com/Install-Oracle-Java-JDK-on-Ubuntu-Linux

# Download, unzip and move Oracle JDK
# http://blog.de-gouveia.eu/2014/05/21/java-8-jdk-linux-installation-in-ec2-linux-instance/
sudo wget -c --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz" --output-document="jdk-8u60-linux-x64.tar.gz"
sudo tar zxvf jdk-8u60-linux-x64.tar.gz
sudo mkdir /usr/local/java
sudo mv jdk1.8.0_60

# update path in /etc/profile
# http://superuser.com/questions/54814/sudo-unable-to-write-to-etc-profile
sudo sh -c "echo 'JAVA_HOME=/usr/local/java/jdk1.8.0_60' >> /etc/profile"
sudo sh -c "echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin' >> /etc/profile"
sudo sh -c "echo 'export JAVA_HOME' >> /etc/profile"
sudo sh -c "echo 'export PATH' >> /etc/profile"

# use alternatives
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_60/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_60/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_80/bin/javaws" 1
sudo update-alternatives --set java /usr/local/java/jdk1.8.0_60/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk1.8.0_60/bin/javac
sudo update-alternatives --set javaws /usr/local/java/jdk1.8.0_60/bin/javaws

# start using new path
source /etc/profile

# test
java -version