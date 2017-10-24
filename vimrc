set nocompatible            "不兼容vi
filetype off
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle             " 将vundle路径添加到插件vim路径

" pass a path where Vundle should install plugins
let path = '~/.vim/bundle/Plugin'
call vundle#rc(path)

" 将Vundle加入到bundle
Plugin 'gmarik/vundle'

filetype on                           " enable filetype detection
filetype indent plugin on                 " 安装完后打开文件类型

"-------------------------------------------------------------------------------------------
"DongH's Plugins here:

"plugin:
"Programming for public:
"提供单个源代码文件的函数列表之类
Plugin 'taglist.vim'

"文件浏览器
Plugin 'The-NERD-tree'

"提供快速注释/反注释代码块的功能
Plugin 'The-NERD-Commenter'

"添加doxygen注释
Plugin 'DoxygenToolkit.vim'

"提供超强的快速生成代码段的功能
"" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"给不同的单词高亮，表明不同的变量时很有用
Plugin 'VirMark.vim'

"用来帮助缩进对齐的插件，需要的时候会很好用
"Plugin 'Indent Guides'

"C/C++
"提供C++代码的自动补全功能
"cd ~/.vim/bundle
"git clone https://github.com/Valloric/YouCompleteMe.git
"cd YouCompleteMe
"git submodule update --init --recursive
"./install.sh --clang-completer
"Plugin 'Valloric/YouCompleteMe'

"generates a list of compiler flags from a project with an arbitrary build system
Plugin 'rdnetto/YCM-Generator'

"语法检查
Plugin 'scrooloose/syntastic'

"自动检测文件编码，也可以手动选择文件编码
Plugin 'FencView.vim'

"提供命令模式下的补全，可以补全缓冲区中出现过的单词
Plugin 'CmdlineComplete'

"#用全新的方式在文档中高效的移动光标，革命性的突破
Plugin 'EasyMotion'

"让代码更加易于纵向排版，以=或,符号对齐
Plugin 'Tabular'

"indentLine 更加美观的显示缩进对齐线
Bundle 'Yggdroot/indentLine'

"color scheme
Plugin 'Solarized'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'


Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'

"go language
Plugin 'fatih/vim-go'

"zen coding
Plugin 'mattn/emmet-vim'

"安装tagbar插件  
Bundle 'majutsushi/tagbar'  

"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------
"set nu       "打开行号显示
"set guifont=MonoSpace\ 30
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 16
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"VIM UI {
"设置颜色、背景等
syntax on                             " syntax highlight
syntax enable
" 配色方案
set background=dark
colorscheme solarized
"colorscheme molokai
"
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" highlight current line
set cursorline

" show matching brackets/parenthesis
set showmatch

" find as you type search
set incsearch

" 高亮显示搜索结果
set hlsearch

" use indents of 4 spaces
set shiftwidth=4

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" auto format comment blocks
set comments=sl:/*,mb:*,elx:*/

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 代码折叠

" 基于缩进或语法进行代码折叠
"set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

set numberwidth=4

" show the cursor position all the time
set ruler

" auto read when file is changed from outside
set autoread

" 设置一行字符宽度
set textwidth=80
" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }



" file encoding 编码{
set encoding=utf-8
set fileencodings=utf-8,gb18030,cp936,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,chinese
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8
" disable sound on errors
" 关闭错误提示声音
set visualbell
set noerrorbells
set t_vb=
set tm=500
" 忽略文件类型
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**
"}

" Key (re)Mappings {
"The default leader is '\', but many people prefer ',' as it's in a standard
"location
let mapleader = ','
"clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>
" Shortcuts
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" Easier horizontal scrolling
map zl zL
map zh zH

"=====================================================================
"taglist option，设置taglist插件的选项，进行定制
"=====================================================================

"设置tagbar使用的ctags的插件,必须要设置对  
let g:tagbar_ctags_bin='/usr/bin/ctags'  
"打开文件自动 打开tagbar  
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  
let Tlist_Show_One_File=1      "只显示一个文件的tags
let Tlist_Exit_OnlyWindow=1    "当taglist窗口是最后一个窗口时，退出vim
let Tlist_Use_Right_Window=1   "taglist窗口显示在右侧
noremap <silent> <F6> :TlistToggle<CR>      "相当于定义快捷键
noremap <silent> <Leader>tt :TlistToggle<CR>  "定义第二个快捷键
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

"==========================================================================
"BufExplore setting，设置bufexplorer插件的选项，进行定制
"==========================================================================
let g:BufExplorerShowRelativePath=1
let g:BufExplorerSplitRight=0
let g:BufExplorerSplitVertical=1
let g:BufExplorerSplitBelow=0
noremap <silent> <Leader>be :BufExplorer<CR>
noremap <silent> <Leader>bs :BufExplorerHorizontalSplit<CR>
noremap <silent> <Leader>bv :BufExplorerVerticalSplit<CR>

"=========================================
"NERDTree settings
"" ---------- NERDTree [智能文件浏览器] ----------------
"=========================================
" :NERDTree              --启动NERDTree插件
"o[小写]                 --切换当前文件或目录的打开、关闭状态
" u                      --打开上层目录
"p[小写]                 --返回上层目录
" P [大写]               --返回根目录
"K                       --转到当前目录第一个节点
" J                      --转到当前目录最后的节点
"m                       --显示文件系统菜单     [增、删、移]
" ?                      --弹出帮助菜单
"q                       --退出该插件
"nmap <silent> <leader>t :NERDTree<cr>
noremap <silent> <F2> :NERDTree<CR>      "相当于定义快捷键
" 工程文件浏览
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


"=========================================
"NERD Commenter settings
"=========================================
",ca，在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
",cc，注释当前行
",c，切换注释/非注释状态
",cs，以”性感”的方式注释
",cA，在当前行尾添加注释符，并进入Insert模式
",cu，取消注释
"Normal模式下，几乎所有命令前面都可以指定行数
"Visual模式下执行命令，会对选中的特定区块进行注释/反注释

set nocp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
" For example, my .vimrc contains:
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="xxx"
let g:DoxygenToolkit_licenseTag="xxx"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

"}
" ycm_config{
" for ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F4> :YcmDiags<CR>
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0

" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"}
"
"
"
"
"" ################### 自动补全 ###################

" 代码自动补全
"迄今为止用到的最好的自动VIM自动补全插件
"重启 :YcmRestartServer
"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files = 1

"let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开

" 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

let g:ycm_global_ycm_extra_conf = "/home/dl/.vim/bundle/Plugin/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
