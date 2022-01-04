# 安装ubuntu相关软件的脚本

## pip加入清华镜像(python3)

  sudo apt install python3-pip

  pip3 install pip -U
  
  pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

## 更新conda镜像
  
  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
  
  conda config --set show_channel_urls yes
  
## git提速

  git config --global http.proxy socks5://127.0.0.1:1080

  git config --global https.proxy socks5://127.0.0.1:1080

  /etc/hosts

  151.101.72.249 http://global-ssl.fastly.Net
  

## .bashrc文件中加入一下几行代码
  
  alias mv='mv -i'
  
  alias rm='rm -i'
  
  #任何以空格开头的命令都不会保存到历史记录列表中
  
  #HISTCONTROL=ignorespace
  
  #从历史记录文件中删除之前出现的所有相同命令，并且只将最后一次调用保存到历史记录列表中。
  
  HISTCONTROL=ignorespace:erasedups
  
### 从 gdb 中得到堆栈调用序列


sudo apt-get install nvidia-xxx nvidia-settings nvidia-prime


### uGet下载工具

sudo add-apt-repository ppa:plushuang-tw/uget-stable

sudo add-apt-repository ppa:t-tujikawa/ppa

sudo apt-get install uget 

sudo apt-get install aria2

### zeal加入pytorch和tensorflow

#### 加入pytorch

git clone https://github.com/pytorch/pytorch.git  # Get the full repo down

cd pytorch/docs/

git checkout v0.2.0

. ~/env3/bin/activate # Or whatever you are using for a VirtualEnv

pip install -r requirements.txt

pip install doc2dash

make docset

cp -r PyTorch.docset ~/.local/share/Zeal/Zeal/docsets/

#### 加入tensorflow

cd ~/.local/share/Zeal/Zeal/docsets/

curl -L -O https://github.com/ppwwyyxx/dash-docset-tensorflow/releases/download/1.xx.xx/TensorFlow-1.xx.xx.tgz

tar -xzf TensorFlow-1.xx.0.tgz

### tmux
https://github.com/gpakosz/.tmux

### v2rayA

#### 添加公钥

wget -qO - https://apt.v2raya.mzz.pub/key/public-key.asc | sudo apt-key add -

#### 添加 V2RayA 软件源

echo "deb https://apt.v2raya.mzz.pub/ v2raya main" | sudo tee /etc/apt/sources.list.d/v2raya.list
sudo apt update

#### 安装 V2RayA

sudo apt install v2raya

启动 v2rayA

sudo systemctl start v2raya.service

#### 设置开机自动启动

sudo systemctl enable v2raya.service
