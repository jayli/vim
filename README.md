# <font color=blue>Easy Vim</font> 配置  ![Vim](https://img.shields.io/badge/vim-awesome-brightgreen.svg) [![Gitter](https://img.shields.io/badge/gitter-join%20chat-yellowgreen.svg)](https://gitter.im/jayli/vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=body_badge)

Author: [@Jayli](http://jayli.github.io/)

版本要求 VIM >= 8.1

## 安装

### 脚本安装

初始安装

	curl "http://jayli.github.io/vim_install.sh" | bash -s install

更新配置

	curl "http://jayli.github.io/vim_install.sh" | bash -s update

### 源码安装

初始安装，确保`~/.vim`不存在

	cd ~/
	git clone https://github.com/jayli/vim.git ~/.vim
	ln -s .vim/_vimrc ./.vimrc

更新配置

	cd ~/.vim
	git pull

## 常用命令

双字符命令

命令 | 描述
--------|------------
tn | :tabnew 打开新窗口
wm | :NERDTreeToggle 打开左侧树形文件菜单列表
mm | :TagbarToggle 打开右侧函数列表
md | :IndentModify 将Tab缩进或者2格缩进修正为4宽Space缩进
   | :IndentShowTab 显示所有的 Tab
// | 选中模式下注释或取消注释多行
**gg** | 到达文件开头
**=** | 选中模式格式化选中部分的代码
**zi** | 全部打开折叠
**zm** | 全部折叠起来
**za** | 当前所在的折叠块折叠起来
[[     | 跳到上一个函数位置
]]     | 跳到下一个函数位置

Ctrl/Shift/Tab 控制命令

命令 | 描述
--------|------------
**Ctrl-P** | CtrlP 命令
Tab | 切换 Tab
Shift-Tab | 回切 Tab
**Shift-G** | 到达文件结尾
**Shift-K** | 查找光标处单词的帮助
**Ctrl-]** | 跳转到函数/变量定义处
**Ctrl-[** | 跳回原处
**Ctrl-T** | 跳回原处
**Ctrl-O** | 跳回上一个Buffer
Ctrl-B | js 文件的格式重排，JSBeautify
Ctrl-K | Snipmate 展开代码片段
Ctrl-l | 快速右移
Ctrl-h | 快速左移
b | 以单词为回退长度后退光标
e | 以单词为跃进长度前进光标

常用 Command

命令 | 描述
--------|------------
:H | `:H` 呼出最常用命令
:JSHint | JSHint，可以`:js<Tab>`补全
:vs | 垂直分割窗口
:ps | 水平分割窗口


> jshint 需要预装 node 的 jslint

	npm install jshint -g

折叠：我习惯用 marker 折叠方式，基于`/*{{{}}}*/`匹配折叠，更容易控制代码。

**AutoComplete**：自动补全基于 [EasyComplete](https://github.com/jayli/vim-easycomplete) 和 [Vim-Dictionary](https://github.com/jayli/vim-dictionary)，使用 <kbd>Tab</kbd> 完成补全，字典词表配置[参照这里](https://github.com/jayli/vim-dictionary)

> EasyComplete 中 Tab 的配置不能和 [SuperTab](https://github.com/ervandew/supertab) 共用

**CSSLint**（可选）：需要额外安装（依赖node）,也是通过F4来激活，针对css和less文件有效

	sudo npm install -g csslint

**JSLint**（可选）：js语法检查，通过 <kbd>F4</kbd> 唤醒/关闭，F5更新语法（不常用）， 安装方法[参照这里](http://bbs.piaoxian.net/thread-8047-1-1.html)

## 插件管理

基于 [Pathogen](https://github.com/tpope/vim-pathogen) 做 vim 插件管理，插件安装在`~/.vim/bundle`中，语言相关的插件有：

- [vim-go](https://github.com/fatih/vim-go) → [Go 编程指令](https://github.com/fatih/vim-go#features)。
- [vim-javascript](https://github.com/pangloss/vim-javascript)

------

主要插件列表

- matchit（<http://www.vim.org/scripts/script.php?script_id=39>）
- ctrlp（<https://github.com/kien/ctrlp.vim>）
- csslint（<http://csslint.net/>）
- jshint（<https://github.com/walm/jshint.vim>）
- fuzzyfinder（<https://github.com/vim-scripts/FuzzyFinder>）
- jsbeautify（<http://jsbeautifier.org/>）
- Pathogen（<https://github.com/tpope/vim-pathogen>）
- vim-go（<https://github.com/fatih/vim-go>）
- vim-javascript（<https://github.com/pangloss/vim-javascript>）
- vim-easy-align（<https://github.com/junegunn/vim-easy-align>）

### 简洁的状态条 Moonline

自己配了一个简洁的状态条：[MoonLine](https://raw.githubusercontent.com/jayli/vim/master/plugin/moonline.vim)

<img src="https://gw.alicdn.com/tfs/TB1NzkVb4TpK1RjSZFGXXcHqFXa-801-139.png" width=480>

安装很简单，将文件拷贝到`~/.vim/plugin/`目录下即可，无需配置

	cd ~/.vim/plugin/
	wget https://raw.githubusercontent.com/jayli/vim/master/plugin/moonline.vim

### Debugger 调试

我常用 NodeJS 、Python 和 Golang 调试，依赖插件 [Vim-EasyDebugger](https://github.com/jayli/vim-easydebugger)

### VIM 卡顿

VIM 打开大文件和语法复杂的文件都会卡顿，卡顿来源于两方面：一插件的滥用，二语法文件不够精简。所以一定要确保只留必要插件，非必要插件不要安装，语法文件复杂直接影响到运行时的卡顿，js 和 go 语法高亮逻辑很简单，一般不会卡顿，但类似 shell 和 vimL 这种语法超级复杂的语言，必须要对 syntax 文件进行瘦身，取子集，尽量避免语法的正则渲染，最好是关键字的枚举，我只对 vimL 的 syntax 文件做了[一定的瘦身](https://github.com/jayli/vim/blob/master/syntax/vim.vim)，性能上基本达标。

Enjoy yourself！
