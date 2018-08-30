# Vim 配置 

by 拔赤 ![Vim](https://img.shields.io/badge/vim-awesome-brightgreen.svg) [![Gitter](https://img.shields.io/badge/gitter-join%20chat-yellowgreen.svg)](https://gitter.im/jayli/vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=body_badge) 

![](https://gw.alicdn.com/tfs/TB1M4PnubsrBKNjSZFpXXcXhFXa-2226-1382.png)

## 安装

### 脚本安装

初始安装

	curl "http://jayli.github.io/vim_install.sh" | bash -s install

更新配置

	curl "http://jayli.github.io/vim_install.sh" | bash -s update 

### 源码安装

初始安装，确保`~/.vim`不存在

	cd ~/
	git clone https://github.com/jayli/vim.git
	mv vim .vim
	ln -s .vim/_vimrc ./.vimrc

更新配置

	cd ~/.vim
	git pull

## 常用命令

Open：打开文件，三种方式：

	ctrl-P	→ 模糊匹配文件
	ctrl-T	→ 打开新窗口
	wm		→ 选择打开文件

Open Tab：多标签切换：普通模式下直接按 `Tab`,或`S-Tab`

Zencode：编辑模式下， `Ctrl+k` 展开

Modify：空格缩进替换为 4 格 Tab 缩进 `Shift-M` （Modify），为 js 文件重排格式 `Shift-B`（Beautifiy）

JSBeautify：JS代码（完全）格式化：`S-b`

HTML/JS代码重新整理缩进（不完全格式化）：`=`，全文缩进：

	gg 到达文件头
	= 要求缩进
	G 到文件尾部

 JSHint：F8唤醒，弹出唤醒窗口

> jshint需要预装node的jslint

	npm install jshint -g

快速左移：`C-h`，快速右移：`C-l`，垂直切分窗口`:vs`，水平切分窗口`:ps`

AutoComplete：自动补全：

- tag 补全：编辑模式下直接`Tab`，字库未定义
- 关键字匹配：C-O
- CSS 关键字匹配：C-O，或者直接输入`:`后弹出自动匹配
- Javascript 关键字匹配：C-O，或者直接输入`.`弹出自动匹配
- 自动文件名匹配：C-F
- 括号匹配：js文件自动完成，无需特殊配置和快捷键

JSDoc：注释生成：`C-d`，如果当前行为空行，生成文件注释，如果为函数，生成函数注释

KISSY 常用的三段代码生成(快捷键为编辑模式下`C-k`)：

- KISSY.add:`ksadd`
- KISSY.use:`ksuse`
- KISSY.add的完整代码结构1:`ksmod`
- KISSY.add的完整代码结构2:`kssmod`
- 插入全局JSHint配置：`jshint`

CSSLint：需要额外安装（依赖node）,也是通过F4来激活，针对css和less文件有效

	sudo npm install -g csslint

JSLint：js语法检查（选用）

- JSLint：F4唤醒/关闭，F5更新语法（不常用）， 安装：

> <http://bbs.piaoxian.net/thread-8047-1-1.html>

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

