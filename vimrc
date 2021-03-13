"http://wiki.csie.ncku.edu.tw/vim/vimrc#%E4%BB%8B%E9%9D%A2%E5%84%AA%E5%8C%96
" Color configuration
syntax enable
set t_Co=256
colorscheme monokai
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Bold:h14
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
endif

""" indention settings \"""
set tabstop=4
set shiftwidth=4
set expandtab ""Replacing tab with spaces
"set smarttab  Use tab instead of spaces 
set autoindent "" Indenting to current indention level on new line input

""" Search settings \"""
set showmatch "" Automatically move cursor to next results position
set hlsearch "" Highlight search results
set incsearch
"" set ignorecase "" Ingore upper/lower-case different when searching all under case
set smartcase "" Case-depedent search when search query includes uppercase or regex

""" Line number \"""
set nu "" Display linenumber (== set number)
"set relativenumber "" Show linenumber relative to cursor
set numberwidth=5 "" Width of numberline column

""" Miscellenious settings \"""{
set showcmd "" Show input commands at bottom of screen
set backspace=2 " Allow backspace across nwe-line
set cursorline
"set shell=zsh\ --login " Set shell commmand environment to match regular terminal
"set mouse=a " Enable mouse interaction
"set ruler "Display cusor position??
"set background=dark " Choose color scheme for dark background}

""" wild card settings \"""
"set wildmenu " Enable wild card
"set wildmode = longest,full " Set to autocomplete to the longest prefix
"set wildignore += *.a, *.o " Setting to ignore non-textbased extensings
"set wildignore += *.bmp, *.gif, *.ico, *.jpg, *.png
"set wildignore += .git, .hg, .svn
"set wildignore += *~, *.swp, *.tmp

"###################"
"### The Plugins ###"
"###################"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'godlygeek/tabular'
""" Add packages like [github_user]/[repository name]
call vundle#end()
filetype on
filetype plugin on
filetype indent on
"
"
"inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
"
"function! s:align()
"    let p = '^\s*|\s.*\s|\s*$'
"    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
"        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
"        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
"        Tabularize/|/l1
"        normal! 0
"        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
"    endif
"endfunction
set fdm=marker
