#!/bin/sh


#替换自己的token
token="aaa"
#docker 映射的目录 你自己的本地目录
path="/etc/xiaoya/"


docker stop xiaoya
docker rm xiaoya
docker pull xiaoyaliu/alist:latest
if [ -d $path/mytoken.txt ]; then
	rm -rf $path/mytoken.txt
fi
mkdir -p $path
touch $path/mytoken.txt
echo $token > $path/mytoken.txt
touch $path/pikpak.txt
touch $path/guestpass.txt
docker run -d -p 5678:80 -v $path:/data --restart=always --name=xiaoya xiaoyaliu/alist:latest
