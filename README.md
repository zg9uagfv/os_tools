# 安装ubuntu相关软件的脚本

## .bashrc文件中加入一下几行代码
  
  alias mv='mv -i'
  
  alias rm='rm -i'
  
  #任何以空格开头的命令都不会保存到历史记录列表中
  
  #HISTCONTROL=ignorespace
  
  #从历史记录文件中删除之前出现的所有相同命令，并且只将最后一次调用保存到历史记录列表中。
  
  HISTCONTROL=ignorespace:erasedups
  
  #在历史记录文件中在所有的条目前面添加上时间戳
  
  HISTTIMEFORMAT="%F %T  "
  
## 核心转储core dump

### 出现段错误，Linux的内核把一个核心转储写到磁盘

  1.启动程序前运行 
  ulimit -c unlimited
  sudo sysctl -w kernel.core_pattern=/tmp/core-%e.%p.%h.%t
  ulimit：设置核心转储的最大尺寸
  ulimit -c 设置核心转储的最大尺寸。 它往往设置为 0，这意味着内核根本不会写核心转储。 它以千字节为单位。 
### 从 gdb 中得到堆栈调用序列

  gdb 打开一个核心转储文件:
  gdb -c my_core_file
  函数名就像 “??????”,通过加载符号修复了它。
  symbol-file /path/to/my/binary
  sharedlibrary
  
### 查看每个线程的堆栈
  通过以下方式在 gdb 中获取每个线程的调用栈
  thread apply all bt full

