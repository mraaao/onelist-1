sudo -i
docker pull msterzhang/onelist:latest
mkdir /root/onelist/config
docker run -d --name onelist -e PUID=0 -e PGID=0 -e TZ=Asia/Shanghai -p 5245:5245 -v /root/onelist/config:/config --add-host api.themoviedb.org:13.224.161.90 msterzhang/onelist:latest
sed -i 's#UserEmail=xxxx.@qq.com#UserEmail=123456@qq.com#g' /root/onelist/configconfig.env
sed -i 's#UserPassword=xxxxx#UserPassword=123456#g' /root/onelist/configconfig.env
docker restart onelist
