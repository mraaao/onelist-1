rm onelist-linux-musl-amd64.tar.gz
wget https://github.com/msterzhang/onelist/releases/latest/download/onelist-linux-musl-amd64.tar.gz

tar -zxvf onelist-linux-musl-amd64.tar.gz
rm onelist-linux-musl-amd64.tar.gz
chmod +x onelist

echo FROM scratch > Dockerfile
echo ADD ./ / >> Dockerfile
echo EXPOSE 5245 >> Dockerfile
echo CMD ["ping", "baidu.com"] >> Dockerfile

./onelist -run config
sed -i 's#UserEmail=xxxx.@qq.com#UserEmail=123456@qq.com#g' config.env
sed -i 's#UserPassword=xxxxx#UserPassword=123456#g' config.env
./onelist -run server
