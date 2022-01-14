---
title: "Marp-利用Markdown创建PPT"
date: 2020-02-29T18:57:40+08:00
draft: false
---

[点击此处查看PPT效果](https://blog.computbiol.com/public/marp.html)

# Marp

Markdown Presentation Ecosystem

https://marp.app/

---

# How to write slides

Split pages by horizontal ruler (`---`). It's very simple! :satisfied:

```markdown
# Slide 1

foobar

---

# Slide 2

foobar
```

---

# Marp for VS Code

<https://github.com/marp-team/marp-vscode>

<https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode>

---

# Marp CLI

<https://github.com/marp-team/marp-cli>

## Install

```shell
npm install -g @marp-team/marp-cli
```

---

## Basic usage

- Convert to HTML

```marp slide-deck.md```or```marp slide-deck.md -o output.html```

- Convert to PDF (--pdf)

```shell
marp --pdf slide-deck.md
marp slide-deck.md -o converted.pdf
```

---

- Convert to PowerPoint document (--pptx)

```shell
marp --pptx slide-deck.md
marp slide-deck.md -o converted.pptx
```

- Other usage

---

# Reference

[Marp：用 Markdown「写」PPT 的新选择 **(Marp)**](https://sspai.com/post/55718)

[如何用 Markdown 做幻灯？ **(reveal.js)**](https://sspai.com/post/52589)

<https://marp.app/>

<https://github.com/hakimel/reveal.js/>

<https://github.com/wshuyi/markdown2slides>
