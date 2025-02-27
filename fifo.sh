#!/bin/bash

#kernel version obtained from uname -r 

rm op.txt

#sudo  cp pkt_sched.h  /usr/src/linux-headers-$(uname -r)-new/include/uapi/linux/pkt_sched.h

sudo  cp pkt_sched.h  /usr/src/linux-headers-5.15.67-custom-new/include/uapi/linux/pkt_sched.h

#/usr/src/linux-headers-5.15.67-custom-new/include/uapi/
 sudo cp sch_generic.h   /usr/src/linux-headers-5.15.67-custom-new/include/net/sch_generic.h


#sudo  cp pkt_sched.h  /usr/src/linux-headers-5.15.67-custom/include/uapi/linux/addtional.h


#change the interface here its lo and enp0s3

#sudo tc qdisc del dev enp0s3 root
sudo tc qdisc del dev lo root

sudo rmmod sch_fifo

make clean

make

sudo insmod sch_fifo.ko 

#add path to the scheduler folder 
#sudo env TC_LIB_DIR=PATH TO /scheduler/iproute2/tc ./iproute2/tc/tc help

sudo env TC_LIB_DIR=~/scheduler/iproute2/tc ./iproute2/tc/tc help

#sudo dmesg -c

#sudo dmesg -c

#clear

echo "$now" >> op.txt

echo "dmesg starts" >> op.txt

#add path to the scheduler folder 
#sudo env TC_LIB_DIR=PATH TO /scheduler/iproute2/tc ./iproute2/tc/tc help


#sudo env TC_LIB_DIR=/home/bala/Documents/Custom-tc-novel-scheduler/scheduler/iproute2/tc ./iproute2/tc/tc qdisc add dev enp0s3 root fq f1_sourceport 46730 f2_sourceport 46731 f1_destport 5800 f2_destport 6000

sudo env TC_LIB_DIR=~/scheduler/iproute2/tc ./iproute2/tc/tc qdisc add dev lo root pfifo
#sudo tc qdisc del dev enp0s3 root


#add path to the scheduler folder 
#sudo env TC_LIB_DIR=PATH TO /scheduler/iproute2/tc ./iproute2/tc/tc help


sudo env TC_LIB_DIR=~/scheduler/iproute2/tc ./iproute2/tc/tc qdisc show

#gnome-terminal --tab -e "./meta.sh"

#./meta.sh

#sleep 30s

#sudo tc qdisc del dev enp0s3 root
#sudo tc qdisc del dev lo root

now=$(date +"%r")



#sleep 40s

#dmesg >> op.txt

#clear

exit 0
#committed to new branch
