sudo apt update
sudo apt -y install wget curl

wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
sudo apt install ./jdk-17_linux-x64_bin.deb

cat <<EOF | sudo tee /etc/profile.d/jdk.sh
export JAVA_HOME_17=/usr/lib/jvm/jdk-17/
export PATH=\$PATH:\$JAVA_HOME_17/bin
EOF
