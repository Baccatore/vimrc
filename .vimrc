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
set showmatch                 "Empathize the corresponant focused braket
set matchtime=1               "Time to emphasize another bracket
set tabstop=2                 "set i
set softtabstop=4            
set shiftwidth=4              "Tab width vim automatically generates
set autoindent                
set smartindent               "Enable autoindent
set laststatus=2              "Always show the status bar in the below
set helpheight=999            "Show the help with the maximum size window
set ruler                     "Show the number of rline and the posision on the line below
set matchtime=3               "Heilight empathaized part for three secondes
set list                      "Visualize invisible characters
set wildmenu wildmode=list:full "Enable autocomplete function
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
set incsearch                 "Enable incremental search


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

"HTML5 arguments
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
let g:user_emmet_settings={'variables' :{'lang' : "ja"},'identification' : '  '}

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

