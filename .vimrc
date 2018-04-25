"Basic Preferences--------------------------------------------------------------
filetype off
filetype plugin on

"Visual Setting-----------------------------------------------------------------
set nocompatible
set number                    "Show the line number
set title                     "Show the current file
set cursorline                "Show underline on the cursor line
"set cursorcolumn              "Empqsize the background of the curosr column
set showmatch                 "対応する括弧を強調表示
set tabstop=4                 "インデントをスペース4つ分に設定
set softtabstop=4             "
set shiftwidth=4              "vimが自動で生成するTab幅
set autoindent                
set smartindent               "オートインデント
set laststatus=2              "ステータスバーの常時表示
set helpheight=999            "ヘルプ画面を最大で表示
set ruler                     "画面下部に行数とカーソル位置を常時表示
set matchtime=3               "強調表示を3秒間に設定
set list                      "空白文字可視化
set incsearch                  "インクリメンタル検索
set wildmenu wildmode=list:full "補完機能
syntax on                     "コードの色分け

"General Coding Supports--------------------------------------------------------
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
"imap < <><LEFT>


"Search Configulations----------------------------------------------------------
set ignorecase     "大/小文字の区別しない
set smartcase      "検索文字列に大文字が含まれている場合は区別
set wrapscan       "検索時に最後まで行ったら最初に戻る

"Execution of Initial Commands--------------------------------------------------
"autocmd Vimenter * execute 'NERDTree' 
"let NERDTreeShowHiden = 1
"autocmd Vimenter * execute 'tabnew'
"autocmd Vimenter * execute 'help'

"Key Mappings-------------------------------------------------------------------

"List of Supported Languages----------------------------------------------------
"	1.C/C++
"	2.JAVA
"	3.HTML/CSS
"	HTML,XMLを連結文字列に変換するための正規表現
vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
" HTML 5 tags
syn keyword htmlTagName contained article aside audio bb canvas command datagrid
syn keyword htmlTagName contained datalist details dialog embed figure footer
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time video
syn keyword htmlTagName contained source figcaption

" HTML 5 arguments
syn keyword htmlArg contained autofocus autocomplete placeholder min max step
syn keyword htmlArg contained contenteditable contextmenu draggable hidden item
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget manifest
syn keyword htmlArg contained formaction formenctype formmethod formnovalidate
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"
"	4.PHP
"	5.SQL
"	6.Javascript
"	7.XML
"	8.TeX
" 9.Scilab

"1.C/C++ Coding Supports--------------------------------------------------------
"2,JAVA Coding Supports---------------------------------------------------------
"3.HTML/CSS Coding Supports-----------------------------------------------------
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"let g:user_emmet_leader_key='<->'
let g:user_emmet_settings={
	\	'variables' :{
	\ 'lang' : "ja"
	\ },
	\ 'identification' : '  '
	\}
"4.PHP Coding Supports----------------------------------------------------------
let php_sql_query = 1		"SQLのハイライト表示
let php_baselib = 1
let php_htmlInStrings =1		"HTMLのハイライト表示
let php_noShortTags = 1			"<?のハイライト除外
let php_parent_error_close = 1
let php_folding = 1                     "関数とクラスの折りたたみを有効
"5.SQL--------------------------------------------------------------------------
"6.JAVA-------------------------------------------------------------------------
"7.XML--------------------------------------------------------------------------
"8.TeX Coding Supports----------------------------------------------------------
let g:tex_flavor='latex'
"9.Scilab Coding Supports-------------------------------------------------------
"10.Markdown
au BufRead, BufNewFile *.md set filetype=markdown
nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
let g:vim_markdown_math = 1
"リファレンスの設定-------------------------------------------------------------
let g:ref_cache_dir=$HOME.'/.vim/vim-ref/php-chunked-xhtml'
let g:ref_phpmaual_path=$HOME.'/.vim/vim-ref/php-chunked-xhtml'

"NeoBundleの設定----------------------------------------------------------------
"	[プラグインインストール時の注意点]
"	1.プラグインのリストはneobundle#begin ~ neobundle#end間に記述
"	2.user nameが求められるのはプラグインのパス名が間違っている場合
"	3.デフォルトではGithubからの導入が基本だが他のレポジトリも利用可
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
let g:neobundle_default_git_protocol='https'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'git://git.wincent.com/command-t.git'

NeoBundleFetch 'Shougo/neobundle.vim'     "プラグイン管理
NeoBundle 'Shougo/unite.vim'		  "vim統合環境
NeoBundle 'scrooloose/nerdtree'   "ディレクトリツリー表示
NeoBundle 'mattn/emmet-vim'		    "HMTL/CSS入力補助
NeoBundle 'thinca/vim-ref'		  "リファレンスの追加
"NeoBundle 'vim-arduino-syntax' "Syntex for Arduino
"NeoBundle 'simple-javascript-indenter/indent' "JavaScript用インデント
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'vim-jp/cpp-vim', {
	\ 'autoload' : {'filetypes':['c','cpp']} }  " C++の入力補助
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'Townk/vim-autoclose'		  "括弧の自動閉じ
NeoBundle 'git://git.code.sf.net/p/vim-latex/vim-latex' "LaTeX編集用プラグイン

call neobundle#end()
filetype plugin indent on

if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
			 \ string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
endif
NeoBundleCheck

"Eliminate spacee in the end of each line when saving the fili------------------- 
"unction! RTrim()
"let s:cursor = getpos(“.”)
"%s/\s\+$//e
"call setpos(“.”, s:cursor)
"endfunction
"autocmd BufWritePre *.php,*.rb,*.js,*.bat call RTrim()
