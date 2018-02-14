set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'pangloss/vim-javascript'

Plugin 'crusoexia/vim-monokai'
Plugin 'crusoexia/vim-javascript-lib'

Plugin 'ap/vim-css-color'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'

Plugin 'AutoComplPop'
Plugin 'taglist-plus'

call vundle#end()
filetype plugin indent on

colorscheme monokai
syntax on
autocmd BufReadPre,BufNewFile * let b:did_ftplugin = 1

"\<F3> for NERD Tree
map <F3> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
" 참조 http://vlee.kr/1303

" for taglist-plus
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
set complete+=k
set dictionary+=$HOME/autoCompletion.txt
" end

set fileencodings=utf-8,euc-kr	 " 파일인코딩 형식 지정

set nobackup			 			  " 백업파일을 만들지 않음

set title										" 제목을 표시
set number									" line 표시를 해줍니다.
set ruler										" 상태표시줄에 커서의 위치 표시
set showmatch								" 매칭되는 괄호를 보여줌
set nowrap									" 텍스트 표시할때 자동 줄바꿈 하지 않음
set wildmenu			 				 	" 명령줄 완성이 향상된 기능으로 작동
set autowrite					  	 	" 다른 파일로 넘어갈 때 자동 저장

set ai									" auto indent 
set si									" smart indent
set cindent							" c style indent

set backspace=indent,eol,start		 " allow backspacing over autoindent, line breaks (join lines), the start of insert
set tabstop=2						" vim이 읽어들이는 파일에서 <TAB>을 몇 칸의 공백으로 표시할 것인지
set softtabstop=2				" 편집시에 <TAB>을 공백 몇 칸으로 표시할 것인지
set shiftwidth=2			 	" shift를 2칸으로 >, >>, <, << 등의 명령어
set expandtab			 			" Tab키 사용시에 공백문자로 표시함(만약 탭 문자를 입력해야하는 경우 꺼야함)

set ignorecase					" 검색시 대소문자 구별하지않음
set hlsearch			 			" 검색시 하이라이트 색상 강조

set background=dark				" 검정배경을 사용할 때, 이 색상에 맞춰 문법 하이라이트 색상이 달라집니다.
