---
layout: post
title: Windows下安装Node.js v4.0
tags:  [node,install]
categories: [Node开发]
author: Jaylin
excerpt: "Node.js 4.0发布之际，迫不及待想要的安装使用。下面讲述自己在windows下安装及配置node.js的过程."
---

Node.js 4.0发布之际，迫不及待想要的安装使用。下面讲述自己在windows下安装及配置node.js的过程.

安装
---
- Node.js官网提供有windows一键安装包[node-v4.0.0-x64.msi](https://nodejs.org/dist/latest/node-v4.0.0-x64.msi)

- 下载并逐步安装

- 执行`node -v` 和 `npm -v` 查看安装版本，检验是否安装成功

配置
---
- 为提高国内npm下载速度,使用淘宝提供的cnpm，执行命令

```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

- 配置npm的全局路径

```
npm config set cache "D:\nodejs\node_cache"
npm config set prefix "D:\nodejs\node_global"
```

- 设置NODE_PATH为:(全局路径)\node_modules

---

Node的安装配置工作暂时进行到此,现在可以使用Node.js构建你的应用了。
