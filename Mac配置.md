# 右键开启Terminal

>>系统偏好设置 > 键盘 > 快捷键 > 服务，勾选 “新建位于文件夹位置的终端窗口”

# iTerm2 中用 Finder 打开当前目录

>>$ open .


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


