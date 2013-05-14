" It's kaizi's personal config for Vim

" bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
Bundle 'tpope/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'lepture/vim-velocity'
Bundle 'lepture/vim-jinja'
Bundle 'lepture/vim-css'
Bundle 'altercation/vim-colors-solarized'
" 快速删除修改添加surround
Bundle 'tpope/vim-surround'
Bundle 'mru.vim'
Bundle 'hotoo/uisvr.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'ervandew/supertab'
Bundle 'msanders/snipmate.vim'
" Bundle 'vim-scripts/AutoClose'
" 用,m来高亮任何字符
Bundle 'mbriggs/mark.vim'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on

" globle
set fileencodings=ucs-bom,utf-8,cp936,gb18030
set history=128
set background=dark
colorscheme solarized
set guifont=Menlo:h14

"set autoread
set helplang=cn,en
set t_Co=256
set autochdir
let mapleader = ","

" auto complete
set complete=.,k,t,i
set completeopt=longest,menu

" lines
set wrap
set number
set cursorline

" search
set hlsearch
set incsearch
set ignorecase

" indent & tab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set switchbuf=useopen

" syntax & folding
syntax enable

set foldenable
set foldmethod=manual
set foldcolumn=1
set foldminlines=5
set foldlevel=2
set foldnestmax=3
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

" 不要swp文件
set noswapfile

" 高亮当前行,　当前列
set cursorline
set cursorcolumn

function! ToggleMRU()
	if bufname('%') ==# '__MRU_Files__'
          exec 'close'
     else
          exec 'MRU'
     endif
endfunction


" keys & mouse
map Q :exit<CR>
map <leader><Tab> <C-w><C-w>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
map <F6> :call ToggleMRU()<CR>
map <F9> :!svn update<CR>
map <F10> :!svn commit --message=''<LEFT>
set backspace=indent,eol,start
set mouse=a

" use Alt-n to switch tab
for i in range(1, min([&tabpagemax, 9]))
    execute 'nmap <A-'.i.'> '.i.'gt'
endfor

" set file path
set viminfo+=n$HOME/.vimfiles/viminfo
let g:MRU_File=$HOME . "/.vimfiles/mru_files"

" interface
set ruler
set rulerformat=%15(%c%V\ %p%%%)
set showcmd
set showmode
set guioptions-=T
set guioptions-=m

if has("statusline")
    set laststatus=2
	set statusline=%n\ %F%m%r%h%y[%{&fileformat},\ %{&fileencoding}%{((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\")}]\ %w%=(%b,0x%B)\ (%l,%c)\ %P\ %{&wrap?'WR':'NW'}\ %{&ic?'IC':'CS'}
endif

" autocmd
autocmd! bufwritepost ~/workspace/git/set/vimrc source ~/.vimrc
autocmd BufNewFile,BufRead *.vm set filetype=velocity fileencoding=cp936
autocmd BufNewFile,BufRead */*htdocs/uisvr/* set fileencoding=cp936

" Uisvr.vim
let g:uisvr_opening_window = 'tabnew'

" zencoding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

" 设置按下<Tab>后默认的补全方式, 默认是<C-P>, 
" 现在改为<C-X><C-O>. 关于<C-P>的补全方式, 
" :help ins-completion
" :help compl-omni
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" 代码检查配置
let g:syntastic_loc_list_height=0
let g:syntastic_html_checker = "none"
