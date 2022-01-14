---
title: "Hello Hugo"
date: 2020-02-23T12:20:20+08:00
draft: false
---

## hugo安装

### 方式一

mac使用brew安装，简单直接

```shell
brew install hugo
hugo version
```

### 方式二

由于看中的一款主题要求hugo不低于某版本，brew默认安装的版本不满足，想要安装其它版本。推荐[直接下载](https://github.com/gohugoio/hugo/releases)可执行文件。

> 参考：https://www.dazhuanlan.com/2019/10/24/5db109f5382e7/



## 主题下载和配置

这里很多[主题](https://themes.gohugo.io/)，略扫一遍，看中hugo-theme-pure。很喜欢这款主题，简单纯粹。

```shell
cd themes/
git clone https://github.com/xiaoheiAh/hugo-theme-pure
```

编辑`config.yml`，添加

```yaml
theme: hugo-theme-pure
```


## 生成文章

新建博客项目

```shell
hugo new site blog
```

新建博文

```shell
hugo new posts/hello-hugo.md
```

预览网站

```shell
hugo server -D
```

预览无误后将要发布的文章内`draft`改为`false`后执行命令

```shell
hugo
```

根目录下多出的/public文件夹即为hugo生成的整个静态网站。



参考：

[hugo-theme-pure](https://github.com/xiaoheiAh/hugo-theme-pure)

[赵小黑的博客](https://xiaohei.im/hugo-theme-pure/)

[喜新厌旧之hello Hugo](https://guangchuangyu.github.io/2015/12/%E5%96%9C%E6%96%B0%E5%8E%8C%E6%97%A7%E4%B9%8Bhello-hugo/)

[从Hexo迁移到Hugo-送漂亮的Hugo Theme主题](https://www.flysnow.org/2018/07/29/from-hexo-to-hugo.html#hugomaupassant-1)

