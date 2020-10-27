filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'minibufexpl.vim'
Plugin 'winmanager'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'pangloss/vim-javascript' "更好的js语法 锁进支持
Plugin 'othree/yajs.vim' "更好的js语法高亮
Plugin 'othree/javascript-libraries-syntax.vim' "js各类框架 库的高亮支持
Plugin 'maksimr/vim-jsbeautify' "格式化js css等
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mbriggs/mark.vim' "标记高亮
Plugin 'gorodinskiy/vim-coloresque' "颜色符号显示对应颜色
Plugin 'godlygeek/tabular' "快速对齐
Plugin 'Chiel92/vim-autoformat'
Plugin 'EasyGrep'
Plugin 'fatih/vim-go'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/syntastic'


call vundle#end()
call pathogen#infect()
nmap <F4> :TagbarToggle<CR>
let g:tagbar_width = 40       "设置宽度，默认为40
let g:tagbar_right = 1        "在右侧

:map <F1> :set mouse=a<CR>
:map <F2> :set mouse=v<CR>
:map <c-f> :call JsBeautify()<cr>
"map  :call JsBeautify()
autocmd FileType javascript noremap  :call JsBeautify()
autocmd FileType html noremap  :call HtmlBeautify()
autocmd FileType css noremap  :call CSSBeautify()
autocmd filetype *html* imap <c-_> <c-y>/
autocmd filetype *html* map <c-_> <c-y>/

"F2开启和关闭树
map <F3> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25
"let NERDTreeQuitOnOpen=1
let g:NERDTreeUpdateOnWrite = 0

autocmd vimenter * NERDTree
wincmd w
autocmd VimEnter * wincmd w

"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0 "关闭buffer
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'



let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType="context"
nnoremap <C-tab> :bn<CR>
nnoremap <C-s-tab> :bp<CR>

set t_Co=256
let g:solarized_termcolors=256
set nocompatible
"显示行号"
set number
" 隐藏滚动条"
set guioptions-=r
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13
syntax on    "开启语法高亮
let g:solarized_termcolors=256    "solarized主题设置在终端下的设置
set background=dark        "设置背景色"
set wrap    "设置折行"
"set nowrap    "设置不折行"
set fileformat=unix    "设置以unix的格式保存文件"
set cindent        "设置C样式的缩进格式"
set tabstop=4    "设置table长度"
set shiftwidth=4        "同上"
set showmatch    "显示匹配的括号"
set scrolloff=5        "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
"set mouse=a        "启用鼠标"
set selection=exclusive
set matchtime=5
set ignorecase        "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set noexpandtab        "不允许扩展table"
"set whichwrap+=,h,l
set autoread
set cursorline        "突出显示当前行"
set cursorcolumn        "突出显示当前列"
set fileformat=unix
set wildmenu
let python_highlight_all=1
let Tlist_Sort_Type = "name"
let Tlist_Use_Right_Window = 1
let Tlist_Compart_Format = 1
let Tlist_Exist_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Enable_Fold_Column = 0
set selection=exclusive
set selectmode=mouse,key
set noai nosi
set paste
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set showcmd
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


set enc=utf8
let g:ycm_seed_identifiers_with_syntax=1
set fencs=utf8,gbk,gb2312,gb18030,cp936
set ruler
colorscheme solarized "darkblue molokai
set ts=4
set expandtab
set autoindent " same level indent
set smartindent " next level indent
set backspace=2
set autochdir
"let g:airline_theme="dark"
"let g:airline_theme="wombat"
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night_Bright',
            \ }
let g:syntastic_python_checkers = ['pylint']
let g:formatters_python = ['autopep8']
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
let g:pymode_rope_autoimport = 0
let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'], ['Darkblue', 'SeaGreen3'], ['darkgray', 'DarkOrchid3'], ['darkgreen', 'firebrick3'],['darkcyan', 'RoyalBlue3'],['darkred', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['brown', 'firebrick3'],['gray', 'RoyalBlue3'],['black',       'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['Darkblue',  'firebrick3'],['darkgreen', 'RoyalBlue3'],['darkcyan', 'SeaGreen3'],['darkred', 'DarkOrchid3'],['red', 'firebrick3']]
let g:rbpt_max = 16
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"按C关闭nerdtree buffer
nnoremap c :bp\|bd #<CR>
let g:miniBufExplMapWindowNavVim = 1
autocmd filetype crontab setlocal nobackup nowritebackup





"golang"
"let g:go_disable_autoinstall = 0
"let g:go_highlight_functions = 1
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_build_constraints = 1
"let g:go_highlight_generate_tags = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
"let g:go_fmt_command = 'goimports'
""let g:go_fmt_fail_silently = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_list_type = "quickfix"
"let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = '5s'
"autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorscheme molokai
"autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
"autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
"autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
"autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
let g:go_def_mode = 'godef'
let g:go_decls_includes = 'func,type'
"autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_auto_type_info = 1
"set updatetime=100
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
set autowrite

let javascript_enable_domhtmlcss = 1
" temporary fix
" https://github.com/vim/vim/issues/3117
if has('python3')
  silent! python3 1
  endif
