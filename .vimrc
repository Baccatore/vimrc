filetype plugin on 

"""""""""""""""""""""""""""""""""""""""""""""""""
" dein.vim plugin management tool configuration "
"""""""""""""""""""""""""""""""""""""""""""""""""
" dein.vim location
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" If dein.vim is not installed, install it from github.com
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" dein.vim configuration
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

" If you want to use TOML, uncoment this paragraphe
"	let g:rc_dir = expand('~/.vim/rc')
"	let s:toml = g:rc_dir . '/dein.toml'
"	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
"
"	call dein#load_toml(s:toml, {'lazy': 0})
"	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#add('Shougo/dein.vim')
	call dein#add('Shougo/vimproc.vim', {'build': 'make'})
	call dein#add('Shougo/neocomplete.vim')
	call dein#add('Shougo/neomru.vim')
	call dein#add('scrooloose/nerdtree')

	call dein#add('suan/vim-instant-markdown')
	call dein#add('prettier/vim-prettier')
	call dein#add('alvan/vim-closetag')
	let g:closetag_filename = '*.html, *.vue'

	call dein#add('Shougo/deoplete.nvim')
	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif
	let g:deoplete#enable_at_startup = 1
	let g:neocomplete#enable_smart_case = 1
	let g:neocomplete#sources#syntax#min_keyword_length = 2
	let g:neocomplete#auto_completion_start_length = 2
	let g:neocomplete#enable_auto_close_preview = 0

	call dein#add("Yggdroot/indentLine")
	call dein#add("vim-latex/vim-latex")

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

"""""""""""""""""""""""""""
" Parameter configuration "
"""""""""""""""""""""""""""
set pumheight=10              "Set pop-up menu height
set hlsearch                  "Highlight search result
set number                    "Show the line number
set title                     "Show the current file
set showmatch
set matchtime=1               "Time to emphasize another bracket
set tabstop=2                 "インデントをスペース4つ分に設定
set softtabstop=2            
set shiftwidth=2              "vimが自動で生成するTab幅
set autoindent                
set smartindent               "Auto-indtend
set laststatus=2              "ステータスバーの常時表示
set helpheight=999            "ヘルプ画面を最大で表示
set ruler                     "画面下部に行数とカーソル位置を常時表示
set matchtime=3               "強調表示を3秒間に設定
set nolist                      "空白文字可視化
set incsearch                  "インクリメンタル検索
set showcmd
set backspace=2               "Enable to delete indents, end of line(eol) and start 
set gdefault                  "Set option g as default
set ttyfast
set ignorecase     "大/小文字の区別しない
set smartcase      "検索文字列に大文字が含まれている場合は区別
set wrapscan       "検索時に最後まで行ったら最初に戻る
set display=lastline "Dont omit long lines

"Lost functions by deleting Neobudle
" - C++ coding support
" - Vim reference 
" - markdown
" - javascript
" - latex
" - auto correct

""""""""""""""""
" Key Mappings "
""""""""""""""""
inoremap <silent> jj <ESC>
vnoremap > >gv
vnoremap < <gv
nnoremap <silent><C-e> :NERDTreeToggle<CR>

""""""""""""""""""""""""""
" Enable omni completion "
""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""""""""""
" Command executed when vim launched "
""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * execute 'NERDTree'
autocmd Vimenter * wincmd l
autocmd bufenter *
	\ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
	\ | q |
	\endif
syntax on
