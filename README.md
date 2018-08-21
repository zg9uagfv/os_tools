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
