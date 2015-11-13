---
layout: post
title: 使用CSS实现三角形
tags:  [triangle]
categories: [前端开发]
author: Jaylin
excerpt: "类似三角形的形状的元素在网页中是比较常用的，我们可以用图片或者CSS元素达到我们想要的效果。这里主要是讲自己使用HTML+CSS实现三角形的一点心得。"
---

类似三角形的形状的元素在网页中是比较常用的，我们可以用图片或者CSS元素达到我们想要的效果。这里主要是讲自己使用HTML+CSS实现三角形的一点心得。

为了能够熟悉的使用HTML+CSS构建三角形，我们首先要熟悉以下代码以及代码所实现的效果：

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>shape</title>
  <style type="text/css">
      .shape{
        height: 0;
        width: 0;
        border-top: 100px solid red;
        border-right: 100px solid blue;
        border-bottom: 100px solid yellow;
        border-left: 100px solid green;
      }
  </style>
</head>
<body>
  <div class="shape"></div>
</body>
</html
```
这是一个HTML页面，我们定义一个class=shape的元素，为元素设置宽度和高度均为0，上下左右的border为100px并且用不同颜色填充，最终会有以下效果：

<img src="http://7xlgu7.com1.z0.glb.clouddn.com/shape_01.png" style="width:200px">
可以观察到，上下左右的border都占有45度直角三角形区域，底为100px+100px，高为100px。

如果我们希望实现如下图的三角形形状：

<img src="http://7xlgu7.com1.z0.glb.clouddn.com/shape_02.jpg" style="width:100px">

我们可以保留如下图中1或者2的位置：

<img src="http://7xlgu7.com1.z0.glb.clouddn.com/shape_03.jpg" style="width:200px">

我选择1区域，最终CSS如下:

```css
.shape01{
  height: 0;
  width: 0;

  border-top: 100px solid transparent;
  border-right: 100px solid blue;
}
```
其他情况类似。

希望我的理解方式能对大家有帮助 :)
