#! /bin/bash
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
export PATH=$JAVA_HOME/bin:$PATH
source ~/.bashrc

#Download the latest Maven binary:

#Go to the Maven download page and download the latest binary tar.gz file (e.g., apache-maven-3.8.8-bin.tar.gz)

wget https://downloads.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz

#Extract the downloaded file

tar xzvf apache-maven-3.8.8-bin.tar.gz

#Move it to a standard location

sudo mv apache-maven-3.8.8 /opt/maven

#Create a symbolic link

sudo ln -s /opt/maven/bin/mvn /usr/bin/mvn

#Verify the Maven version

mvn -version
