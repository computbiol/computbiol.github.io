---
title: "基于Python HTTP原生库部署深度学习模型API"
date: 2021-03-24T10:35:24+08:00
draft: false
---

这篇笔记是2021年3月份部署深度学习模型时记录的，因具有公网ip的云服务器配置极其有限，所以使用frp进行内网穿透，主要流程如下：

> Python HTTP原生库部署服务 + systemd单元自启 + frp内网穿透 + nginx反向代理

以下所有步骤，1-3位于内网服务器，4位于外网服务器。



## 1. 使用原生Python HTTP库部署服务

这里最后产生`dl_server_api.py`文件。


### 参考教程：

[A neural named entity recognition and multi-type normalization tool for biomedical text mining](https://github.com/dmis-lab/bern)

[深度学习模型最佳部署方式：用Python实现HTTP服务器作API接口](https://blog.ailemon.net/2020/11/09/dl-best-deployment-python-impl-http-api-server/)



## 2. 创建systemd单元文件并设置开机自动启动

```
sudo vim /etc/systemd/system/dl_api.service
```

内容如下

```
[Unit]
Description=Deep Learning API 
After=network.target
Wants=network.target

[Service]
Type=simple
ExecStart=/path/python /path/dl_server_api.py
Restart=always
RestartSec=20s
User=ls
LimitNOFILE=infinity

[Install]
WantedBy=multi-user.target
```

使之生效

```
sudo systemctl daemon-reload
sudo systemctl start dl_api
sudo systemctl status dl_api
sudo systemctl enable dl_api
```



## 3. frp内网穿透

添加配置frpc.ini

```
[dl_api]
type = tcp
local_port = 20000
remote_port = 20000
```

重启frpc服务

```
sudo systemctl restrat frpc
```



## 4. nginx添加反向代理

编辑nginx配置文件

```
location /dl_api/ {
     proxy_pass http://127.0.0.1:20000/; 
     proxy_set_header Host $proxy_host;
     proxy_set_header X-Real-IP $remote_addr;
     proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
     }
```

重载配置

```
sudo nginx -s reload
```


