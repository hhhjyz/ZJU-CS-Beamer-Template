# ZJU_CS_Beamer_Template

浙江大学计算机科学与技术学院 Beamer 模板。

本模板基于 [NJU-CS-Beamer-Template](https://github.com/yunzinan/NJU-CS-Beamer-Template) 修改，原模板修改自 [THU Beamer Theme](https://www.overleaf.com/latex/templates/thu-beamer-theme/vwnqmzndvwyb)。

## 使用方法

使用 XeLaTeX 编译：

```bash
xelatex slide.tex
bibtex slide
xelatex slide.tex
xelatex slide.tex
```

在自己的文稿中引用主题：

```tex
\documentclass{beamer}
\usepackage{ctex}
\usepackage{tikz}
\usepackage{ZJUCS}
```

## 模板内容

- `ZJUCS.sty`：浙江大学计算机学院 Beamer 主题。
- `slide.tex`：示例文档。
- `pic/zjucs-logo-white.png`：深色封面使用的学院标识。
- `pic/zjucs-logo-blue.png`：正文水印使用的学院标识。

## 视觉设定

- 主色：浙江大学求是蓝 `RGB(0, 63, 136)` / `#003F88`。
- 强调色：浙江大学创新红 `RGB(176, 31, 36)` / `#B01F24`。
- 色彩规范参考浙江大学英文官网 [Logo](https://www.zju.edu.cn/english/2023/0323/c74903a2732011/page.htm) 页面。
- 学院标识来自浙江大学计算机科学与技术学院官网页面资源。

## Credits

- Original NJU CS template: yunzinan
- THU Beamer Theme: Jiayi Weng
