from ubuntu:16.04

run apt-get update
run apt-get install -y software-properties-common
run add-apt-repository -y ppa:wpilib/toolchain-beta
run apt-get update
run apt-get install -y frc-toolchain
run /usr/bin/arm-frc-linux-gnueabi-gcc-5.5 --version
run /usr/bin/arm-frc-linux-gnueabi-g++-5.5 --version

volume "/data"
workdir /data

cmd make CC=/usr/bin/arm-frc-linux-gnueabi-gcc-5.5 CXX=/usr/bin/arm-frc-linux-gnueabi-g++-5.5

