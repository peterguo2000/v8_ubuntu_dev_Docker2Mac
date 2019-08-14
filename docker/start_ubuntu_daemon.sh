docker run -v $MAC_LOCAL_LOCATION:/root/shared -it -d -p 2222:22 --name ubuntu_daemon8 ubuntu_dev /usr/sbin/sshd -D 
