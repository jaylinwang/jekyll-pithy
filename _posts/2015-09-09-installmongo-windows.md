---
layout: post
title: Windows下安装MongoDB
tags:  [MongoDB,install]
categories: [数据库应用]
author: Jaylin
excerpt: "简述Windows中MongoDB安装及配置过程"
---

安装
---

- 下载MongoDB的windows安装包[mongodb-win32-x86_64-2008plus-ssl-3.1.7-signed.msi](https://www.mongodb.org/downloads)

- 根据步骤依次安装

- 配置环境变量
(1) 将mongodb的bin目录添加至PATH，方便在命令行中执行命令。
(2) 在未配置PATH的情况下可直接进入安装目录执行命令

- 运行MongoDB

```
mongod --dbpath  path//启动mongodb服务器,path为数据存储地址
mongo //启动mongodb客户端
```
----------

配置为windows服务
---

- 创建配置文件(此项非必需，因为可通过命令参数处理),内容如下:

```
systemLog:
   destination: file
   path: D:\mongodb\log\mongod.log
storage:
   dbPath: D:\mongodb\db
```

- 创建mongodb服务,以管理员身份运行命令行,以下分别列出通过命令行参数和配置文件创建MongoDB服务

```
//通过命令行参数创建服务
mongod --dbpath D:\mongodb\data --logpath=D:\mongodb\logs\mongodb.log --install
//通过配置文件创建服务
mongod --config D:\mongodb\mongodb.cfg  --install
```

- 启动服务

```
net start MongoDB
```

- 停止服务

```
net stop MongoDB
```

- 移除服务

```
 mongod --remove
```
