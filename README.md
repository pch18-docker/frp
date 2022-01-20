frp内网穿透快速部署

服务端
```
docker run -tid --name frps --net=host --restart always \
-e ADMIN_USER=username \
-e ADMIN_PWD=password \
-e TOKEN=ttttttken \
pch18/frp:s
```


本地端
```
docker run -tid --name frpc --net=host --restart always \
-e ADMIN_USER=username \
-e ADMIN_PWD=password \
-e TOKEN=ttttttken \
-e SERVER_ADDR=domain.com \
pch18/frp:c
```
