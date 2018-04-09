# Vim 配置 

by 拔赤

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/jayli/vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=body_badge) [https://gitter.im/jayli/vim](https://gitter.im/jayli/vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&content=body_link). 

## 安装

初始安装

	curl "https://raw.githubusercontent.com/jayli/vim/master/install.sh" | bash -s install

更新配置

	curl "https://raw.githubusercontent.com/jayli/vim/master/install.sh" | bash -s update 

## 常用命令

打开文件，三种方式：

	ctrl-P	→ 模糊匹配文件
	ctrl-T	→ 打开新窗口
	wm		→ 选择打开文件

多标签切换：普通模式下直接按 `Tab`,或`S-Tab`

垂直切分窗口`:vs`，水平切分窗口`:ps`

zencode：编辑模式下， `Ctrl+k` 展开

空格缩进替换为 4 格 Tab 缩进 `Shift-M` （Modify）


- JSHint：F8唤醒，弹出唤醒窗口

> jshint需要预装node的jslint

	npm install jshint -g

快速左移：`C-h`

快速右移：`C-l`

自动补全：

- tag补全：编辑模式下直接`Tab`，字库未定义
- 关键字匹配：C-O
- CSS关键字匹配：C-O，或者直接输入`:`后弹出自动匹配
- Javascript 关键字匹配：C-O，或者直接输入`.`弹出自动匹配
- 自动文件名匹配：C-F

注释生成：`C-d`，如果当前行为空行，生成文件注释，如果为函数，生成函数注释

KISSY 常用的三段代码生成(快捷键为编辑模式下`C-k`)：

- KISSY.add:`ksadd`
- KISSY.use:`ksuse`
- KISSY.add的完整代码结构1:`ksmod`
- KISSY.add的完整代码结构2:`kssmod`
- 插入全局JSHint配置：`jshint`

JS代码（完全）格式化：`S-b`

HTML/JS代码重新整理缩进（不完全格式化）：`=`，全文缩进：

	gg 到达文件头
	= 要求缩进
	G 到文件尾部

CSSLint:需要额外安装（依赖node）,也是通过F4来激活，针对css和less文件有效

	sudo npm install -g csslint

js语法检查（选用）

- JSLint：F4唤醒/关闭，F5更新语法（不常用）， 安装：

> <http://ued.taobao.com/blog/2010/11/11/jslint-for-vim/>

------

插件列表

- matchit（<http://www.vim.org/scripts/script.php?script_id=39>）
- ctrlp（<https://github.com/kien/ctrlp.vim>）
- zencoding（<https://github.com/mattn/zencoding-vim>）
- csslint（<http://csslint.net/>）
- jslint（<http://ued.taobao.com/blog/2010/11/11/jslint-for-vim/>）
- jshint（<https://github.com/walm/jshint.vim>）
- fuzzyfinder（<https://github.com/vim-scripts/FuzzyFinder>）
- jsbeautify（<http://jsbeautifier.org/>）



