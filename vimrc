set nocompatible            "不兼容vi
filetype off
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
Plugin 'UltiSnips'

"给不同的单词高亮，表明不同的变量时很有用
Plugin 'VirMark.vim'

"用来帮助缩进对齐的插件，需要的时候会很好用
"Plugin 'Indent Guides'

"C/C++
"提供C++代码的自动补全功能
"./install.sh --clang-completer
Plugin 'Valloric/YouCompleteMe'

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

set nocp

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
let g:vimrc_author='zg9uagfv'
let g:vimrc_email='zg9uagfv@gmail.com'
let g:vimrc_homepage='http://zg9uagfv.github.com' 
"}
" for ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
