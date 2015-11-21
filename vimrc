set nocompatible            "不兼容vi
filetype off
set rtp+=~/.vim/bundle/vundle             " 将vundle路径添加到插件vim路径

" pass a path where Vundle should install plugins
let path = '~/.vim/bundle/Plugin'
call vundle#rc(path)

" 将Vundle加入到bundle
Plugin 'gmarik/vundle'

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
Plugin 'UltiSnips'

"给不同的单词高亮，表明不同的变量时很有用
Plugin 'VirMark.vim'

"自动生成/更新文件的作者信息
Plugin 'AuthorInfo' 

"一个通用的语法检查插件，支持c,js,等等
Plugin 'checksyntax'

"用来帮助缩进对齐的插件，需要的时候会很好用
"Plugin 'Indent Guides'

"C/C++
"提供C++代码的自动补全功能
"Plugin 'OmniCppComplete'
Plugin 'Valloric/YouCompleteMe'

"语法检查
Plugin 'scrooloose/syntastic'

"Script that will search for and load cscope.out databases automatically
Plugin 'autoload_cscope.vim'

"提供快速切换.h和.cpp文件的功能
Plugin 'a.vim'


"Python
"提供实时检查python代码语法的功能
Plugin 'pyflakes'


"TOOLS
"提供列出配色列表的功能，就不用一个个手工去敲配色名字了
Plugin 'Color-Scheme-Explorer'

"自动检测文件编码，也可以手动选择文件编码
Plugin 'FencView.vim'

"提供命令模式下的补全，可以补全缓冲区中出现过的单词
Plugin 'CmdlineComplete'

"#用全新的方式在文档中高效的移动光标，革命性的突破
Plugin 'EasyMotion'

"让代码更加易于纵向排版，以=或,符号对齐
Plugin 'Tabular'

"项目中所有文件的查找
Plugin 'lookupfile'

Plugin 'genutils'

"Fcitx input
Plugin 'fcitx.vim'

"Indet
"提供python的语法缩进，比默认的要好很多
Plugin 'indentpython.vim'


"Syntax
Plugin 'python.vim'

"indentLine 更加美观的显示缩进对齐线
Bundle 'Yggdroot/indentLine'

"color scheme
Plugin 'Solarized'

"js code"
Plugin 'ZenCoding.vim'





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
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins


"-------------------------------------------------------------------------------
"set nu       "打开行号显示
set guifont=MonoSpace\ 20

"VIM UI {
"设置颜色、背景等
syntax on                             " syntax highlight
syntax enable
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
set cursorline " highlight current line
set backspace=indent,eol,start " backspace for dummies
set linespace=0 " No extra spaces between rows
set nu " Line numbers on
set showmatch " show matching brackets/parenthesis
set incsearch " find as you type search
set hlsearch " highlight search terms
set winminheight=0 " windows can be 0 line high
set ignorecase " case insensitive search
set smartcase " case sensitive when uc present
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,] " backspace and cursor keys wrap to
set scrolljump=5 " lines to scroll when cursor leaves screen
set scrolloff=3 " minimum lines to keep above and below cursor
set foldenable " auto fold code
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
"}




" Formatting {
set nowrap " wrap long lines
set autoindent " indent at the same level of the previous line
set shiftwidth=4 " use indents of 4 spaces
set expandtab " tabs are spaces, not tabs
set tabstop=4 " an indentation every four columns
set softtabstop=4 " let backspace delete indent
"set matchpairs+=<:> " match, to be used with %
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
set completeopt=longest,menu          "设置单词自动补全选项
set number                            "行号显示
set numberwidth=4
set history=1000                      " keep 1000 lines of command line history
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set noswapfile
set nobackup                          " no *~ backup files
set nowb
set copyindent                        " copy the previous indentation on autoindenting
set cindent                           " C语言智能缩进
set textwidth=80                      " 设置一行字符宽度
" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }



" file encoding 编码{
set encoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,chinese
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
let Tlist_Show_One_File=1      "只显示一个文件的tags
let Tlist_Exit_OnlyWindow=1    "当taglist窗口是最后一个窗口时，退出vim
let Tlist_Use_Right_Window=1   "taglist窗口显示在右侧
noremap <silent> <F6> :TlistToggle<CR>      "相当于定义快捷键
noremap <silent> <Leader>tt :TlistToggle<CR>  "定义第二个快捷键
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

"==============================================================================
"csope settings，设置cscope的参数内容，实现启动自动添加数据库
"==============================================================================
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
"ctrl+shift+- equal <C-_>
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

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


"===================================================================
" lookupfile setting
"===================================================================
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./lookup.files")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./lookup.files"'
endif

nmap <silent> <Leader>lf <Plug>LookupFile<CR>
nnoremap <silent> <Leader>lb :LUBufs<CR>
nnoremap <silent> <Leader>lw :LUWalk<CR>
nnoremap <silent> <Leader>lt :LUTags<CR>

"======================================
"quickfix setting
"======================================
"noremap <silent> <Leader>cn :cn<CR>
"noremap <silent> <Leader>cp :cp<CR>
"noremap <silent> <Leader>cw :cw<CR>
"noremap <silent> <Leader>cc :cc<CR>
"noremap <silent> <Leader>co :copen<CR>
"noremap <silent> <Leader>ce :cclose<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" omni setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocp
filetype plugin on
"filetype indent on
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_NamespaceSearch = 0
"let OmniCpp_DisplayMode = 0
"let OmniCpp_ShowScopeInAbbr = 0
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_DefaultNamespaces = []
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 0
"let OmniCpp_SelectFirstItem = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="JiuZhou"
let g:DoxygenToolkit_licenseTag="JiuZhou own license"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AuthorInfo setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimrc_author='jz'
let g:vimrc_email='jz@gmail.com'
let g:vimrc_homepage='http://www.jz.cn' 
"}
