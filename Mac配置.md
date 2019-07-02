- 右键开启Terminal

>>系统偏好设置 > 键盘 > 快捷键 > 服务，勾选 “新建位于文件夹位置的终端窗口”

- iTerm2 中用 Finder 打开当前目录

>>$ open .


- brew

# 使用国内的镜像
$ cd "$(brew --repo)"
$ git remote set-url origin git://mirrors.ustc.edu.cn/brew.git

$ cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
$ git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git

$ brew update

$ echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
$ source ~/.bash_profile

