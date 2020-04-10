"Basic Preferences--------------------------------------------------------------
filetype off
filetype plugin on

"Visual Setting-----------------------------------------------------------------
set nocompatible
set pumheight=10              "Set pop-up menu height
set hlsearch                  "Highlight search result
set number                    "Show the line number
set title                     "Show the current file
set cursorline                "Show underline on the cursor line
"set cursorcolumn              "Empasize the background of the curosr column
set showmatch                 "対応する括弧を強調表示
set matchtime=1               "Time to emphasize another bracket
set tabstop=4                 "インデントをスペース4つ分に設定
set softtabstop=4            
set shiftwidth=4              "vimが自動で生成するTab幅
set autoindent                
set smartindent               "オートインデント
set laststatus=2              "ステータスバーの常時表示
set helpheight=999            "ヘルプ画面を最大で表示
set ruler                     "画面下部に行数とカーソル位置を常時表示
set matchtime=3               "強調表示を3秒間に設定
set list                      "空白文字可視化
set incsearch                  "インクリメンタル検索
"set wildmenu wildmode=list:full "補完機能 neocompleteを導入中なので無効化
set showcmd
set backspace=2               "Enable to delete indents, end of line(eol) and start 
set gdefault                  "Set option g as default
set ttyfast

syntax on

"Search Configulations----------------------------------------------------------
set ignorecase     "大/小文字の区別しない
set smartcase      "検索文字列に大文字が含まれている場合は区別
set wrapscan       "検索時に最後まで行ったら最初に戻る
set display=lastline "Dont omit long lines


""Execution of Initial Commands--------------------------------------------------
"TODO What were thesse script mean again?
"autocmd Vimenter * execute 'NERDTree' 
"let NERDTreeShowHiden = 1
"autocmd Vimenter * execute 'tabnew'
"autocmd Vimenter * execute 'help'


"Key Mappings-------------------------------------------------------------------
inoremap <silent> jj <ESC>
vnoremap > >gv
vnoremap < <gv

"List of Supported Languages----------------------------------------------------
"HTML/CSS
"	HTML,XMLを連結文字列に変換するための正規表現
"vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
"vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
"HTML5 tags
syn keyword htmlTagName contained article aside audio bb canvas command datagrid
syn keyword htmlTagName contained datalist details dialog embed figure footer
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time video
syn keyword htmlTagName contained source figcaption

"TML5 arguments
syn keyword htmlArg contained autofocus autocomplete placeholder min max step
syn keyword htmlArg contained contenteditable contextmenu draggable hidden item
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget manifest
syn keyword htmlArg contained formaction formenctype formmethod formnovalidate
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"

"HTML/CSS Coding Supports-----------------------------------------------------
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"let g:user_emmet_leader_key='<->'
let g:user_emmet_settings={
			\	'variables' :{
			\ 'lang' : "ja"
			\ },
			\ 'identification' : '  '
			\}

"PHP Coding Supports----------------------------------------------------------
let php_sql_query = 1		"SQLのハイライト表示
let php_baselib = 1
let php_htmlInStrings =1		"HTMLのハイライト表示
let php_noShortTags = 1			"<?のハイライト除外
let php_parent_error_close = 1
let php_folding = 1                     "関数とクラスの折りたたみを有効

"TeX Coding Supports----------------------------------------------------------
let g:tex_flavor='latex'

"Markdown----------------------------------------------------------------------
au BufRead, BufNewFile *.md set filetype=markdown
nnoremap <silent> <C-p> :PrevimOpen<CR> "Ctrl-pでプレビュー
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
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'vim-jp/cpp-vim', {
			\ 'autoload' : {'filetypes':['c','cpp']} }  " C++の入力補助
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'Townk/vim-autoclose'		  "括弧の自動閉じ
NeoBundle 'git://git.code.sf.net/p/vim-latex/vim-latex' "LaTeX編集用プラグイン
NeoBundle 'Shougo/neocomplete.vim' "Reinforce auto-complete functionalit

call neobundle#end()
filetype plugin indent on

if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
				\ string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
endif
NeoBundleCheck

"Eliminate space in the end of each line when saving the fili------------------- 
"unction! RTrim()
"let s:cursor = getpos(“.”)
"%s/\s\+$//e
"call setpos(“.”, s:cursor)
"endfunction
"autocmd BufWritePre *.php,*.rb,*.js,*.bat call RTrim()

""---- NeoComplete ----
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
" Minimum number of input to complete
let g:neocomplete#auto_completion_start_length = 2
let g:neocomplete#enable_auto_close_preview = 0


" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	"return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()
"."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
