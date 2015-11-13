---
layout: post
title: Ubuntu下MySQL配置为外网访问
tags:  [ubuntu,MySQL]
categories: [数据库应用]
author: Jaylin
excerpt: "安装MySQL后默认外网无法连接，但是很多时候我们想要在外网访问方便管理。在这里，简单叙述一下自己在配置过程中的操作。"
---

ububtu安装MySQL后默认外网无法连接，但是很多时候我们想要在外网访问方便管理。在这里，简单叙述一下自己在配置过程中的操作，步骤如下:

- 以root身份登入mysql

```
mysql -u root -p
```

- 创建可外网登陆用户

```
CREATE USER 'custom'@'%.example.com' IDENTIFIED BY 'user_password';
```

- 为用户授权

```
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP  ON customer.* TO  'custom'@'%';
```

- 检查/etc/mysql/my.cnf，去掉绑定ip

- 重启服务

```
sudo service mysql restart
```