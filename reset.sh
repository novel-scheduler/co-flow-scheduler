cd  /home/bala/Downloads
sudo insmod co-flow-scheduler/sch_fq.ko
sudo tc qdisc add dev lo root fq
sudo tc qdisc del dev lo root
sudo rmmod sch_fq
