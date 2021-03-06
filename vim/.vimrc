"===========================================================================
"         Filename: vimrc
"           Author: HM
"            Email: wangbandi#gmail.com
"         Homepage: http://huangming.github.com
"          Created: 2015.03.30
"===========================================================================


"                      _________________________
"
"                               Plugin
"                      _________________________
"
"---------------------------------------------------------------------------
" => Vundle
"---------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" https://github.com/junegunn/vim-plug
" :PlugInstall PlugUpdate PlugUpgrade PlugDiff
" Plug 'Shougo/vimproc'
" Plug 'Shougo/vimshell.vim'

let g:bufExplorerSplitBelow=1 
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jlanzarotta/bufexplorer'
if executable('ctags')
    Plug 'majutsushi/tagbar'
endif
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
" let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
map <F2> :CtrlPMRU<CR>
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
if executable('git')
    Plug 'tpope/vim-fugitive'
endif
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/vim-easy-align'
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" 快速注释
Plug 'tpope/vim-commentary'
autocmd FileType vim set commentstring=\"\ %s
autocmd FileType vbnet set commentstring=\'\ %s
Plug 'vim-scripts/VisIncr'
" xptemplate不兼容别人写的snipets，更换补全引擎
" Plug 'drmingdrmer/xptemplate'
"--------------------------------------------------------
" => xptemplate.vim
"--------------------------------------------------------
""let g:xptemplate_brace_complete = 1
"let g:xptemplate_brace_complete = '([''"'
""au FileType java,htmldjango let g:xptemplate_brace_complete = '([{''"'
""let g:xptemplate_vars = "SParg="        " 括号补全无空格
"" if nothing matched in xpt, try c-p 
"let g:xptemplate_fallback = '<C-p>'
 
"" avoid key conflict
""let g:SuperTabMappingForward = '<Plug>supertabKey'

"" if nothing matched in xpt, try supertab
""let g:xptemplate_fallback = '<Plug>supertabKey'

"" xpt uses <Tab> as trigger key
"let g:xptemplate_key = '<Tab>'

""let g:xptemplate_always_show_pum=1 
"" use <tab>/<S-tab> to navigate through popup menu  //NOT necessary. 
"let g:xptemplate_pum_tab_nav = 1
"let g:xptemplate_nav_cancel = '<C-c>'
"" xpt triggers only when you typed whole name of a snippet.   //NOT necessary. 
" let g:xptemplate_minimal_prefix = 'full'
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <CR> pumvisible() ? "\<C-y><c-r>=XPTemplateStart(0)<cr>" : "\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" snoremap <expr> <C-p> pumvisible() ? '<C-n>' : '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'
"--------------------------------------------------------

" Track the engine.
" Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'justinj/vim-react-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips',$HOME.'/.vim/bundle/vim-react-snippets/UltiSnips']

" ------------------------------------------
" 括号高亮
"\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['darkmagenta','darkred','darkgreen','darkcyan', 'darkyellow', 'darkblue'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'htmldjango': {
\			'parentheses': ['start=/{/ end=/}/ fold','start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

" ------------------------------------------
Plug 'Shougo/neocomplcache.vim'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_quick_match = 1 
" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vim/.vimshell_hist',
    \ 'scheme' : $HOME.'/.vim/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vim/.vimshell_hist',
\ 'scheme' : $HOME.'/.vim/.gosh_completions',
\ 'css' : $VIMFILES.'/dict/css.dic',
\ 'php' : $VIMFILES.'/dict/php.dic',
\ 'javascript' : $VIMFILES.'/dict/javascript.dic'
\ }

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" ------------------------------------------

Plug 'itchyny/calendar.vim'
let g:calendar_google_calendar = 0
let g:calendar_google_task = 0
let g:calendar_task=1
let g:calendar_event_start_time=1
let g:calendar_cache_directory=$HOME.'/Nutstore/documents/vim/vimbackup/vimwikiNote/calendar/'

Plug 'Stormherz/tablify'
Plug 'vimwiki/vimwiki'
Plug 'yianwillis/vimcdoc'
Plug 'huangming/myvimplugin'

Plug 'vim-scripts/VOoM'
Plug 'vim-scripts/txt.vim--xu'
Plug 'ap/vim-css-color'
Plug 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_enable_on_vim_startup = 1
Plug 'michaeljsmith/vim-indent-object'
  let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown", "vbnet"]

Plug 'scrooloose/syntastic'
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_python_checkers = ['python']
let g:syntastic_enable_python_checker = 0
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_java_javac_delete_output = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" if has('gui_running')
"     Plug 'Lokaltog/vim-powerline'
" endif
Plug 'vim-scripts/Color-Scheme-Explorer'
Plug 'baskerville/bubblegum'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'tomasr/molokai'

" Git plugin not hosted on GitHub
" Plug 'git://git.wincent.com/command-t.git'

" git repos on your local machine ( .e. when working on your own plugin)
" Plug 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plug 'rstacruz/sparkup', {'rtpa': 'vim/'}

" Avoid a name conflict with L9
" Plug 'user/L9', {'name': 'newL9'}


" Initialize plugin system
call plug#end()

filetype plugin indent on     " required!
 "
 " Brief help
 " :PluginList          - list configured bundles
 " :PluginInstall(!)    - install(update) bundles
 " :PluginSearch(!) foo - search(or refresh cache first) for foo
 " :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Plugin command are not allowed..

"                      _________________________
"
"                           General settings
"                      _________________________
"
"---------------------------------------------------------------------------
" => General settings
"---------------------------------------------------------------------------
function! OSX()
    return has('macunix')
endfunction
function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction
function! WINDOWS()
    return (has('win16') || has('win32') || has('win64'))
endfunction
"}}}

"use English for anything in vim
if WINDOWS() && &filetype=='java'
    silent exec 'language english'
else
    set fileencodings=utf-8,ucs-bom,chinese
    set encoding=utf-8
    set fileencoding=utf-8
    set ambiwidth=double
    set termencoding=utf-8
    " anguage messages zh_CN.UTF-8  
    if has("win32")  
        set termencoding=chinese  
        language message zh_CN.UTF-8  
    endif  
endif

set history=100
syntax on
set cursorline
set scrolloff=5
set cmdheight=2
set report=0
set helplang=cn
if has('mouse')
  set mouse=r
endif
"set t_Co=256
" set background=light
set bsdir=buffer
set nocompatible
set autochdir
set listchars=tab:>\ ,eol:$,extends:>,precedes:<  " Unprintable chars mapping 
set showbreak=->\ \ \ 
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc
set showcmd
set shortmess=at " Avoids 'hit enter'
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
let mapleader=',' " Change the mapleader
let maplocalleader='\' " Change the maplocalleader

"--------------------------------------------------------------------------
" => Colorscheme
"--------------------------------------------------------------------------
" colorscheme molokai
if has("gui_running")
    exec 'colorscheme '.["peachpuff","solarized","delek","bubblegum-256-light","Tomorrow","bubblegum-256-dark"][strftime("%S")%6] 
else
    exec 'colorscheme '.["slate","morning","desert","delek","molokai","bubblegum-256-dark"][strftime("%S")%6] 
endif

"--------------------------------------------------------------------------
" => Status bar
"--------------------------------------------------------------------------
" Only have cursorline in current window and in normal window
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
auto InsertEnter * set nocursorline
auto InsertLeave * set cursorline
set laststatus=1

"set statusline+=%{fugitive#head()}
set ruler              " bottom status bar
" set rulerformat=%45(%=\:b%n%m%r\ %Y\ %{fugitive#head()}\ %l,%c%V\ %P%)
set rulerformat=%40(%n%m%r:\ [%{&fenc!=''?&fenc:&enc}:%{&ff}]\ %Y\ [%l,%v]\ %p%%%)
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
if version >= 700    " change color when enter inser motion
   au InsertEnter * hi StatusLine guibg=#818D2d guifg=#FCFCFC gui=none
   au InsertLeave * hi StatusLine guibg=Yellow guifg=SlateBlue gui=none
endif

"---------------------------------------------------------------------------
" => Gui settings
"---------------------------------------------------------------------------
if has("gui_running")
    "au GUIEnter * simalt ~x  " maximun window
    set guioptions-=m        " menu bar
    set guioptions-=T        "  tools bar
    "set guioptions-=L        " left scroll bar
    set guioptions-=r        " right scroll bar
    "set guioptions-=b        " bottom scroll bar
    set showtabline=0        " tab bar
endif

"---------------------------------------------------------------------------
" => Pos and size when start
"---------------------------------------------------------------------------
" winpos 350 150
" winpos 250 200
" set lines=25
" set columns=85
if WINDOWS()
    winpos 220 100
    set lines=26
    set columns=85
" debian-kde-konsole 配置lines和columns会引起光标错乱
"else
"    winpos 220 100
"    set lines=40
"    set columns=140
endif
" set lines=8
" set columns=100

"---------------------------------------------------------------------------
" => Font
"---------------------------------------------------------------------------
if has('gui_running')
    if has("win32")
      " set guifont=Lucida\ Console:h11:cANSI
        set guifont=Yahei_Mono:h12.5
        nmap <F9> :call libcallnr("vimtweak.dll", "SetAlpha", 200)<Left>
    endif
"else
"    set guifont=Monaco:h12.5
endif

"---------------------------------------------------------------------------
" => File settings
"---------------------------------------------------------------------------
set confirm                     " confirm when quit file
set autoread                    " update file when it change external
set backspace=indent,eol,start
"set shortmess=atI              " dont display tips when start
" Set directories
"set noswapfile

set backup " Set backup
set undofile " Set undo
" Set directories
set backupdir=~/.vim/tmp/backup " backups
set directory=~/.vim/tmp/swap   " swap files
set viewdir=~/.vim/tmp/view   " view files
set undodir=~/.vim/tmp/undo   " undo files
set undolevels=1000

autocmd BufWinLeave *.* silent! mkview " Make Vim save view (state)(folds,cursor,etc)
autocmd BufWinEnter *.* silent! loadview " Make Vim load view(state)(folds,cursor,etc)

"---------------------------------------------------------------------------
" => File format and Typesetting
"---------------------------------------------------------------------------
"set nowrap
set virtualedit=insert          " help virtualedit!
set formatoptions=tcrqn         " auto format
set textwidth=10000             " the max column,auto wrap when eceeding
set matchtime=5                 " highlights time for Maching braces
set showmatch                   " highlights for maching braces
set nolinebreak                 " dont break on words
set cindent                     " indent on c style
set tabstop=4
set shiftwidth=4
set expandtab
set modeline                    " autoload indent line setting
au BufNewFile,BufReadPost *.html setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
"au BufRead,BufNewFile *.css set ft=css syntax=css3

func! AppendModeline()
 let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d :",
 \ &tabstop, &shiftwidth, &textwidth)
 let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
 call append(line("$"), l:modeline)
endfunc
"map key <Leader>ml auto change modeline
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>
" au BufWritePre *.Q ks|:silent %s/^scriptstart\s*=\s*\zs\d\+$/\=submatch(1).line('.')/|'s

"---------------------------------------------------------------------------
" => Auto completion
"---------------------------------------------------------------------------
inoremap <C-]>             <C-X><C-]>
inoremap <C-F>             <C-X><C-F>
set complete+=]
" line                     CTRL-X CTRL-L
" keyword                  CTRL-X CTRL-N
" dict                     CTRL-X CTRL-K
" synonyms dict            CTRL-X CTRL-T
" key words                CTRL-X CTRL-I
" tags                     CTRL-X CTRL-]
" file name                CTRL-X CTRL-F
" definitions              CTRL-X CTRL-D
" vim command              CTRL-X CTRL-V
" custom                   CTRL-X CTRL-U
" spelling suggestions     CTRL-X CTRL-S 
set wildmenu               " command line auto-complete
set completeopt=longest,menuone 
set wildmode=list:longest,full              " Use powerful wildmenu
set ic                                      " ignore case
set iskeyword+=.,_,$,@,%,#,-                " about dict complete

"---------------------------------------------------------------------------
" => Search and replace
"---------------------------------------------------------------------------
set hlsearch
set incsearch      " enter '/b' you can find the word begin with b
set gdefault       " replace all the lines match
set ignorecase     " ignore case

" Open a Quickfix window for the last search.
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Highlight word 
highlight InterestingWord  ctermbg=yellow guibg=yellow ctermfg=black guifg=#000000
highlight InterestingWord1 ctermbg=green  guibg=green  ctermfg=black guifg=#000000
highlight InterestingWord2 ctermbg=blue   guibg=blue   ctermfg=black guifg=#000000
highlight InterestingWord3 ctermbg=red    guibg=red    ctermfg=white guifg=#FFFFFF
nnoremap <silent> <leader>hh :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>h1 :execute 'match InterestingWord1 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>h2 :execute '2match InterestingWord2 /\<<c-r><c-w>\>/'<cr>
nnoremap <silent> <leader>h3 :execute '3match InterestingWord3 /\<<c-r><c-w>\>/'<cr>

"-------------------------------------------------
" => Fold Related
"-------------------------------------------------

set foldenable
"set foldopen = "all"
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=0
set foldlevelstart=99       " dont fold when open file

" Space to toggle and create folds.
nnoremap <silent><Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Set foldtext
function! MyFoldText()
    let line=getline(v:foldstart)
    let nucolwidth=&foldcolumn+&number*&numberwidth
    let windowwidth=winwidth(0)-nucolwidth-3
    let foldedlinecount=v:foldend-v:foldstart+1
    let onetab=strpart('          ', 0, &tabstop)
    let line=substitute(line, '\t', onetab, 'g')
    let line=strpart(line, 0, windowwidth-2-len(foldedlinecount))
    let fillcharcount=windowwidth-len(line)-len(foldedlinecount)
    return line.'...'.repeat(" ",fillcharcount).foldedlinecount.'...'.' '
endfunction
set foldtext=MyFoldText()
"--------------------------------------------------------------------------
" => Special file style
"---------------------------------------------------------------------------
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
au BufRead,BufNewFile {*.txt}                         set ft=txt
au BufRead,BufNewFile {*.tabl}                         set nowrap
autocmd FileType excel set noexpandtab

"function! CtagsUpdata()
"    let s:pwd = $PWD
"    call system( 'cd ' . g:projecthome . ' && ctags -R' )
"    call system( 'cd ' . s:pwd ) | execute 'cd ' . s:pwd
"    execute 'set tags=' . g:default_tag
"    execute 'set tags+=' . g:projecthome . 'tags'
"     args *.c
"     argdo set ff=unix | update
"endfunction
"autocmd BufNewFile  *.py   0r ~/.vim/template/skeleton.py "
"noremap <F12> : !ctags --langdef=vbnet --langmap=Asp:*.Q.<cr>
"noremap <C-F12> : argg tags\|argdo set fenc=utf-8\|update<cr>
set tags=./tags,tags

" Python section
" Run the current buffer in python - ie. on leader+space
autocmd FileType python set textwidth=79 " PEP-8 Friendly
" autocmd BufWritePre,FileWritePre *.py   ks|call AddAuthor()|'s
function! AddAuthor()
    let l:flag = "# "
    if &buftype == 'python'
        flag = "# "
    elseif &buftype == 'c'
        flag = "// "
    endif
    let n=1
    while n < 5
        let line = getline(n)
        if line =~'^'.flag.'\s*\S*Last\s*modified\s*:\s*\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction

function! UpdateTitle()
    exe "normal m'"
    execute '/ Last modified\s*:/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
    exe "normal `'"
    exe "normal mk"
    execute '/ Filename\s*:/s@:.*$@\=": ".expand("%:t")@'
    execute "noh"
    exe "normal `k"
    " echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

function! AddTitle()
    let l:flag = "# "
    let l:description = "py3"
    if &buftype == 'python'
        flag = "# "
        description = "py3"
    elseif &buftype == 'c'
        flag = "// "
        description = ""
    endif

    call append(0,flag."********************************************************")
    call append(1,flag."Author        : huangming")
    call append(2,flag."Email         : dogrich@aliyun.com")
    call append(3,flag."Last modified : ".strftime("%Y-%m-%d %H:%M"))
    call append(4,flag."Filename      : ".expand("%:t"))
    call append(5,flag."Description   : ".description)
    call append(6,flag."********************************************************")
    " echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

function! NewWiki()
    call append(0,"%title ".expand("%:r")."-笔记@HM")
    call append(1,"%toc")
    call append(2,"[[../index|首页]] - [[".expand("%:r")."]]")
    call append(3,"= [[".expand("%:r")."]] =")
    call append(4,"----")
endfunction
au BufNewFile {*.md,*.mkd,*.markdown} call NewWiki()

" Markdown
augroup ft_markdown,vimwiki
    autocmd!
    " Use <localLeader>1/2/3/4/5/6 to add headings
    autocmd Filetype markdown nnoremap <buffer> <localLeader>1 I# <ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>2 I## <ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>3 I### <ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>4 I#### <ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>5 I##### <ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>6 I###### <ESC>
    " Use <LocalLeader>b to add blockquotes in normal and visual mode
    autocmd Filetype markdown nnoremap <buffer> <localLeader>b I> <ESC>
    autocmd Filetype markdown vnoremap <buffer> <localLeader>b :s/^/> /<CR>
    " Use <localLeader>ul and <localLeader>ol to add list symbols in visual mode
    autocmd Filetype markdown vnoremap <buffer> <localLeader>ul :s/^/* /<CR>
    autocmd Filetype markdown vnoremap <buffer> <LocalLeader>ol :s/^/\=(line(".")-line("'<")+1).'. '/<CR>
    " Use <localLeader>e1/2/3 to add emphasis symbols
    autocmd Filetype markdown nnoremap <buffer> <localLeader>e1 I*<ESC>A*<ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>e2 I**<ESC>A**<ESC>
    autocmd Filetype markdown nnoremap <buffer> <localLeader>e3 I***<ESC>A***<ESC>
    " Use <Leader>P to preview markdown file in browser
    " autocmd Filetype markdown nnoremap <buffer> <Leader>P :MarkdownPreview<CR>
    " Use <Leader>i to paste qiniu image 
    autocmd Filetype markdown nnoremap <buffer> <Leader>n :silent!call NewWiki()<CR>
    autocmd Filetype markdown nnoremap <buffer> <Leader>i :silent!call Insertimg()<CR>
augroup END
autocmd! BufWritePost *.md,*.mkd,*.markdown :silent!call Insertimg()<CR>
function! Insertimg()
    " 转换![name](num)
    :%s#\(!\[[^\]]*\](\)\(\w\{,10}\))#\=submatch(1).'http://7xsj4f.com2.z0.glb.clouddn.com/'.expand("%:r").'/'.submatch(2).'.png)'#
    
    " 转换 ![name][num]
    let lnum = 1
    let lst = []
    while lnum <= line("$")
        let line = getline(lnum)
        call substitute(line, '\(!\[[^\]]*\]\[\)\(\d\{,2}\)\]', '\=add(lst, submatch(2))', 'g')
        let lnum += 1
    endwhile
    let unduplst=sort(filter(copy(lst),'index(lst, v:val, v:key+1)==-1'))
    let line = getline(line("$"))
    let flag = matchstr(line,'\[\d\+\]: http:')
    :ks
    while flag != ''
        exe "normal G"
        exe "normal dd"
        let line = getline(line("$"))
        let flag = matchstr(line,'\[\d\+\]: http:')
    endwhile
    exe "normal 's"

    for name in unduplst
      if len(name)>0
          call append(line("$"), "[".name."]: http://7xsj4f.com2.z0.glb.clouddn.com/".expand("%:r")."/".name.".png")
      endif
    endfor
    :w
endfunction

augroup javascript,htmldjango
    autocmd!
    autocmd Filetype javascript inoremap { {<CR>}<ESC>O
    autocmd Filetype htmldjango :UltiSnipsAddFiletypes htmldjango.javascript<CR>
    " autocmd Filetype htmldjango,javascript :RainbowToggle<CR>
augroup END
"--------------------------------------------------------------------------
" => Key map
"---------------------------------------------------------------------------

" clear highlight after search
noremap <silent><Leader>/ :nohls<CR>

" Use sane regexes
nnoremap / /\v
vnoremap / /\v
cnoremap s/ s/\v
nnoremap ? ?\v
vnoremap ? ?\v
cnoremap s? s?\v

" Keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap g* g*zzzv
nnoremap g# g#zzzv

" Visual search mappings
function! s:VSetSearch()
    let temp=@@
    normal! gvy
    let @/='\V'.substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@=temp
endfunction
vnoremap * :<C-U>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-U>call <SID>VSetSearch()<CR>??<CR>

nmap wv      <C-w>v      " vertical spilt window
nmap wc      <C-w>c      " colse the current window
nmap ws      <C-w>s      " spilt window horizontally


" Begining & End of line in Normal mode
noremap H ^
noremap L g_

" Redesign moving keys in insert mode
"inoremap <C-K> <Up>
"inoremap <C-J> <Down>
inoremap <C-H> <Left>
inoremap <C-L> <Right>

" Make j and k work the way you expect
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz

" Navigation between windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-O> <C-W>o

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Copy paste system clipboard
map <leader>y "+y
map <leader>p "+p
map <leader>P "+P
imap <c-v> <c-r>+
" copy result from command between ||
" copy lines between ||
nmap ,cn :redir @+\|\|redir END<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nmap ,cm :silent redir @+\|for i in []\|echo getline(i)\|endfor\|redir END<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Quit help easily
function! QuitWithQ()
  if &buftype == 'help'
    nnoremap <buffer> <silent> q :q<cr>
  endif
endfunction
autocmd FileType help exe QuitWithQ()

" Easy buffer navigation
noremap <leader>bp :bprevious<cr>
noremap <leader>bn :bnext<cr>

nmap gx yiw/^(def)\s+<C-R>"<CR> 

" Quick editing 
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>
nnoremap <silent> <LocalLeader>rs :source $MYVIMRC<CR>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" When vimrc is edited, reload it
autocmd! BufWritePost _vimrc source $MYVIMRC

" better ESC
inoremap jk <Esc>
inoremap jkl <Esc>:
nmap ; :
" automatically leave insert mode after 4 seconds of inaction
" au CursorHoldI * stopinsert
" set ut=10000
set nu
set relativenumber
nmap <leader>n :call NumberToggle()<CR>
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  elseif(&number == 1)
    set nonumber
  else
    set relativenumber
  endif
endfunction 


" Fast saving and closing current buffer without closing windows displaying the buffer
nmap <leader>wq :w!<cr>:bdelete<cr>

"---------------------------------------------------------------------------
" => Complie and run program
"---------------------------------------------------------------------------
"function! QfMakeConv()
"   let qflist = getqflist()
"   for i in qflist
"      let i.text = iconv(i.text, "cp936", "utf-8")
"   endfor
"   call setqflist(qflist)
"endfunction
"au QuickfixCmdPost make call QfMakeConv()

" map <F9> :call CompileRunQ()<CR>
" func! CompileRunQ()
"     set errorformat=%f，第%l行：%m
" "    let &errorformat=iconv("%f第%l行%m", "utf-8", &enc)
"     exec "cexpr[]"
"     exec "caddf E:\\Dropbox\\tmp\\tmp.txt"
"     exec "copen"
" "    call QfMakeConv()
" endfunc

let s:LastShellReturn_L = 0
let s:ShowWarning = 1
let s:Obj_Extension = '.o'
let s:Exe_Extension = '.exe'
let s:Sou_Error = 0
let s:windows_CFlags = 'gcc\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:windows_CPPFlags = 'g++\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
func! CompileC()
    exe ":ccl"
    exe ":update"
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let s:Sou_Error = 0
        let s:LastShellReturn_C = 0
        let Sou = expand("%:p")
        let Obj = expand("%:p:r").s:Obj_Extension
        let Obj_Name = expand("%:p:t:r").s:Obj_Extension
        let v:statusmsg = ''
        if !filereadable(Obj) || (filereadable(Obj) && (getftime(Obj) < getftime(Sou)))
            redraw!
            if expand("%:e") == "c"
                exe ":setlocal makeprg=".s:windows_CFlags
                echohl WarningMsg | echo " compiling..."
                silent make
            elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                exe ":setlocal makeprg=".s:windows_CPPFlags
                echohl WarningMsg | echo " compiling..."
                silent make
            endif
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_C = v:shell_error
            endif
            if s:LastShellReturn_C != 0
                exe ":bo cope"
                echohl WarningMsg | echo " compilation failed"
            else
                if s:ShowWarning
                    exe ":bo cw"
                endif
                echohl WarningMsg | echo " compilation successful"
            endif
        else
            echohl WarningMsg | echo ""Obj_Name"is up to date"
        endif
    else
        let s:Sou_Error = 1
        echohl WarningMsg | echo " please choose the correct source file"
    endif
    exe ":setlocal makeprg=make"
endfunction
func! Link()
    call CompileC()
    if s:Sou_Error || s:LastShellReturn_C != 0
        return
    endif
    let s:LastShellReturn_L = 0
    let Sou = expand("%:p")
    let Obj = expand("%:p:r").s:Obj_Extension
    let Exe = expand("%:p:r").s:Exe_Extension
    let Exe_Name = expand("%:p:t:r").s:Exe_Extension
    let v:statusmsg = ''
    if filereadable(Obj) && (getftime(Obj) >= getftime(Sou))
        redraw!
        if !executable(Exe) || (executable(Exe) && getftime(Exe) < getftime(Obj))
            if expand("%:e") == "c"
                setlocal makeprg=gcc\ -o\ %<\ %<.o
                echohl WarningMsg | echo " linking..."
                silent make
            elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                setlocal makeprg=g++\ -o\ %<\ %<.o
                echohl WarningMsg | echo " linking..."
                silent make
            endif
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_L = v:shell_error
            endif
            if s:LastShellReturn_L != 0
                exe ":bo cope"
                echohl WarningMsg | echo " linking failed"
            else
                if s:ShowWarning
                    exe ":bo cw"
                endif
                echohl WarningMsg | echo " linking successful"
            endif
        else
            echohl WarningMsg | echo ""Exe_Name"is up to date"
        endif
    endif
    setlocal makeprg=make
endfunc
func! CompileRunC()
    let s:ShowWarning = 0
    call Link()
    let s:ShowWarning = 1
    if s:Sou_Error || s:LastShellReturn_C != 0 || s:LastShellReturn_L != 0
        return
    endif
    let Sou = expand("%:p")
    let Obj = expand("%:p:r").s:Obj_Extension
    let Exe = expand("%:p:r").s:Exe_Extension
    if executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
        redraw!
        echohl WarningMsg | echo " running..."
        exe ":!%<.exe"
        redraw!
        echohl WarningMsg | echo " running finish"
    endif
endfunc
func! CheckPythonSyntax()
    " w
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python\ %
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    let &makeprg     = mp
    let &errorformat = ef
    :copen
endfunction
au FileType python map <F10> :call AddAuthor()<CR>
au FileType python map <F8> :!python F:\\PyInstaller-2.1\\pyinstaller.py % -
au FileType python map <F7> :!pyrcc5 -o %:t:r_rc.py %:t:r.qrc<CR>
au FileType python map <F6> :!python -m PyQt5.uic.pyuic -o Ui_%:t:r.py %:t:r.ui<CR>
au FileType python map <F5> :call CheckPythonSyntax()<CR>
au FileType vb map <F5> :! %<CR>
" au FileType java map <F2> :cd H:\\win10\\Java\\jdk1.8.0_65\\corejavabook<CR>
au FileType java map <F5> :!javac %<CR>
au FileType java map <F6> :!appletviewer %:r.html<CR>
au FileType java map <F7> :!javac %:p && appletviewer %:r.html<CR>
au FileType java map <F8> :!javac % && java %:r<CR>
au FileType c,cpp map <F5> :call CompileC()<CR>
au FileType c,cpp map <F6> :call CompileRunC()<CR>

"--------------------------------------------------
" => Tagbar
"--------------------------------------------------
nnoremap <Leader>t :TagbarToggle<CR>
"let g:tagbar_ctags_bin='ctags'
let g:tagbar_autofocus=1
let g:tagbar_expand=1
let g:tagbar_foldlevel=2
let g:tagbar_ironchars=['?', '?']
let g:tagbar_autoshowtag=1
let g:tagbar_width = 30

"--------------------------------------------------
" => NERD_tree
"--------------------------------------------------
nnoremap <Leader>d :NERDTreeTabsToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_gui_startup=0     "(default: 1)Open NERDTree on gvim/macvim startup
let g:nerdtree_tabs_open_on_console_startup=0     "(default: 0)Open NERDTree on console vim startup

"--------------------------------------------------
" => fugitive
"--------------------------------------------------
if executable('git')
    nnoremap <silent> <leader>gs :Gstatus<CR>
    nnoremap <silent> <leader>gd :Gdiff<CR>
    nnoremap <silent> <leader>gc :Gcommit<CR>
    nnoremap <silent> <leader>gb :Gblame<CR>
    nnoremap <silent> <leader>gl :Glog<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
" Automatically remove fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:jedi#goto_command            = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command    = "K"
let g:jedi#usages_command           = "<leader>n"
let g:jedi#completions_command      = "<C-Space>"
let g:jedi#rename_command           = "<leader>rname"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType vbnet set omnifunc=javascriptcomplete#CompleteJ


"---------------------------------------------------------------------------
" => surround.vim
"---------------------------------------------------------------------------
xmap <Leader>sa <Plug>Vsurround

"---------------------------------------------------------------------------
" => Calendar
"---------------------------------------------------------------------------
"let g:calendar_diary='/home/cactus/dev/diary'

"---------------------------------------------------------------------------
" => VimWiki
"---------------------------------------------------------------------------
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_CJK_length = 1
" let g:vimwiki_ext2syntax = {'.md': 'markdown',
"                   \ '.mkd': 'markdown',
"                   \ '.wiki': 'media'}
let g:vimwiki_valid_html_tags ='b,i,s,u,sub,sup,kbd,br,hr,div'
    let wiki_1 = {}
"    let wiki_1.index = 'VimWiki-@HM'
    " let wiki_1.path = '~/vimwiki/'
    let wiki_1.path = '~/Nutstore/documents/vim/vimbackup/vimwiki/'
    let wiki_1.path_html = '~/Nutstore/documents/vim/vimbackup/vimwiki/html'
    let wiki_1.template_path = '~/Nutstore/documents/vim/vimbackup/vimwiki/template/'
    let wiki_1.template_default = 'template1'
    let wiki_1.template_ext = '.html'
    let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
    let wiki_1.syntax = 'markdown'
    let wiki_1.ext = '.md'
    let stk = {}
    let stk.path = '~/Nutstore/documents/vim/vimbackup/vimwikiStk/'
    let stk.path_html = '~/Nutstore/documents/vim/vimbackup/vimwiki/html'
    let stk.template_path = '~/Nutstore/documents/vim/vimbackup/vimwiki/template/'
    let stk.template_default = 'template1'
    let stk.template_ext = '.html'
    let stk.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
    let stk.syntax = 'markdown'
    let stk.ext = '.md'
    let note = {}
    let note.path = '~/Nutstore/documents/vim/vimbackup/vimwikiNote/'
    let note.path_html = '~/Nutstore/documents/vim/vimbackup/vimwiki/html'
    let note.template_path = '~/Nutstore/documents/vim/vimbackup/vimwiki/template/'
    let note.template_default = 'template1'
    let note.template_ext = '.html'
    let note.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
    let note.syntax = 'markdown'
    let note.ext = '.md'
    let g:vimwiki_list = [note,stk,wiki_1]

"---------------------------------------------------------------------------
" => Grep
"---------------------------------------------------------------------------
nnoremap <silent> <F3> :Grep<CR>

"---------------------------------------------------------------------------
" => vim-indent-guides
"---------------------------------------------------------------------------
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
"nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

"---------------------------------------------------------------------------
" => vim-powerline
"---------------------------------------------------------------------------
"let g:Powerline_symbols = 'fancy'
set t_Co=256
"let g:Powerline_symbols = 'unicode'

"  vim: set ts=4 sw=4 tw=10000 :
