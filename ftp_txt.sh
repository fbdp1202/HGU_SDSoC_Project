zedboard_ip="203.252.106.49"

ftp -n $zedboard_ip <<END_SCRIPT
user root root
bin
prompt
cd /mnt
lcd build/zed_linux_hw/sd_card/
mput *
bye
END_SCRIPT

ssh-keygen -R $zedboard_ip
sudo sshpass -proot ssh -o StrictHostKeyChecking=no root@$zedboard_ip <<END_
reboot
END_

sleep 1m

ssh-keygen -R $zedboard_ip
sudo sshpass -proot ssh -o StrictHostKeyChecking=no root@$zedboard_ip <<END_
cd /mnt/
./run.sh > output.txt
END_

#sleep 4s

ftp -n $zedboard_ip <<END_SCRIPT
user root root
bin
prompt
cd /mnt
get output.txt
bye
END_SCRIPT

