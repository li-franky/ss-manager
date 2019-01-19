# ss-manager
manager模式启动ss，通过ssmgr进行管理

***启动到manager模式命令：***

```
sudo docker run  -idt --net=host \
    -e COMMAND="ss-manager -k 123456 -m aes-256-cfb -t 60 -d 8.8.8.8,8.8.4.4 -u --manager-address 127.0.0.1:6001" \
    -d --restart always \
    --name ss-manager \
    docker.io/frankylee/ssapp
 ```
 
***启动到server模式命令：***

```
sudo docker run  -idt --net=host \
    -e COMMAND="ss-server -s 0.0.0.0 -s ::0 -p 8388 -k 123456 -m aes-256-cfb -t 60 --fast-open -d 8.8.8.8,8.8.4.4 -u" \
    -d --restart always \
    --name ss-server \
    docker.io/frankylee/ssapp
```
