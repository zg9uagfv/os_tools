# 右键开启Terminal

>>系统偏好设置 > 键盘 > 快捷键 > 服务，勾选 “新建位于文件夹位置的终端窗口”

# iTerm2 中用 Finder 打开当前目录

>>$ open .

## Github访问与clone不再慢

1. 获取Github相关网站的ip访问https://www.ipaddress.com,
找到页面中下方的“IP Address Tools - Quick Links”，分别输入github.global.ssl.fastly.net和github.com，查询ip地址。
2. 修改本地host文件
以Mac为例，命令行下输入：sudo vi /etc/host，然后输入电脑的密码，打开host文件。
3. 增加host映射
参考如下，增加github.global.ssl.fastly.net和github.com的映射。
151.101.113.194 github.global.ssl.fastly.net
192.30.253.112 github.com

4. 更新DNS缓存
命令行输入：sudo dscacheutil -flushcache，使增加的映射生效。


# brew

## 使用国内的镜像

$ cd "$(brew --repo)"

$ git remote set-url origin git://mirrors.ustc.edu.cn/brew.git

$ cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"

$ git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git

$ brew update

$ echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile

$ source ~/.bash_profile

# 软件

## 视频播放器IINA

## CheatSheet：快捷键提示

## Xmind ZEN
- https://www.xmind.net/zen/

## Alfred
  1. 用关键词「g」开头，空格后加入要搜索的关键词，就能自动打开默认浏览器去到谷歌的搜索结果页
  2. 用关键词「wiki」开头，加入关键词可以直达 wiki 的搜索结果页

## dash

## google chrome

## iTerm2
启动 iTerm2 后按 ⌘+enter 全屏，然后 ⌘+\ 隐藏它，这时候就可以做别的事情去了。任何时间想再用 iTerm2 只需要按 ⌘+\ 即可

## Alfred

## TeamView

## Irvue

## 欧路词典


