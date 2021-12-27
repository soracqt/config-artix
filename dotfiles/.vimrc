" URL: https://vim.wikia.com/wiki/Example_vimrc
" Authors: https://vim.wikia.com/wiki/Vim_on_Libera_Chat
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
" https://vimblog.hatenablog.com/entry/vimrc_set_options
"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
" https://qiita.com/qtamaki/items/4da4ead3f2f9a525591a#%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%AFls-set-hidden-b-tab
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
" https://knowledge.sakura.ad.jp/23121/
set wildmenu

" Show partial commands in the last line of the screen
" https://qiita.com/kojionilk/items/67379e68cf54d811081a#set-showcmd-%E5%85%A5%E5%8A%9B%E4%B8%AD%E3%81%AE%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
" https://qiita.com/kojionilk/items/67379e68cf54d811081a#set-hlsearch-%E6%A4%9C%E7%B4%A2%E8%AA%9E%E5%8F%A5%E3%81%AE%E3%83%8F%E3%82%A4%E3%83%A9%E3%82%A4%E3%83%88
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
" https://qiita.com/kojionilk/items/67379e68cf54d811081a#set-ignorecase-%E6%A4%9C%E7%B4%A2%E6%99%82%E3%81%AB%E8%8B%B1%E5%A4%A7%E5%B0%8F%E6%96%87%E5%AD%97%E3%81%AE%E5%8C%BA%E5%88%A5%E3%82%92%E7%84%A1%E8%A6%96%E3%81%99%E3%82%8B
set ignorecase
" https://qiita.com/kojionilk/items/67379e68cf54d811081a#set-smartcase-%E6%A4%9C%E7%B4%A2%E6%99%82%E3%81%AB%E5%85%A8%E3%81%A6%E8%8B%B1%E5%B0%8F%E6%96%87%E5%AD%97%E3%81%A7%E5%85%A5%E5%8A%9B%E3%81%97%E3%81%9F%E5%A0%B4%E5%90%88%E3%81%AE%E3%81%BF%E5%8C%BA%E5%88%A5%E3%82%92%E7%84%A1%E8%A6%96%E3%81%99%E3%82%8B
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
" https://qiita.com/kojionilk/items/67379e68cf54d811081a#set-backspace-%E3%83%90%E3%83%83%E3%82%AF%E3%82%B9%E3%83%9A%E3%83%BC%E3%82%B9%E6%8A%BC%E4%B8%8B%E6%99%82%E3%81%AE%E6%8C%99%E5%8B%95%E3%82%92%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" https://maku77.github.io/vim/settings/auto-indent.html
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" https://qiita.com/rita_cano_bika/items/2ae9c8304f8f12b1b443
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
" https://qiita.com/kojionilk/items/67379e68cf54d811081a#set-ruler-%E3%82%AB%E3%83%BC%E3%82%BD%E3%83%AB%E3%81%AE%E4%BD%8D%E7%BD%AE%E8%A1%A8%E7%A4%BA%E3%82%92%E8%A1%8C%E3%81%86
set ruler

" Always display the status line, even if only one window is displayed
" https://knowledge.sakura.ad.jp/23121/
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" https://vimblog.hatenablog.com/entry/vimrc_set_file_handling_options
set confirm

" Use visual bell instead of beeping when doing something wrong
" https://vimblog.hatenablog.com/entry/vimrc_set_bell_options
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" https://vimblog.hatenablog.com/entry/vimrc_set_bell_options
set t_vb=

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" https://qiita.com/tamura0425/items/5d268c34a242bd807867#vimrc%E3%81%AE%E4%BD%9C%E6%88%90
set cmdheight=1

" Display line numbers on the left
" https://qiita.com/tamura0425/items/5d268c34a242bd807867#vimrc%E3%81%AE%E4%BD%9C%E6%88%90
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" https://www.softel.co.jp/blogs/tech/archives/4188
set shiftwidth=4
" https://yu8mada.com/2018/08/26/i-ll-explain-vim-s-5-tab-and-space-related-somewhat-complicated-options-as-simply-as-possible/#content-1-2
set softtabstop=4
" https://yu8mada.com/2018/08/26/i-ll-explain-vim-s-5-tab-and-space-related-somewhat-complicated-options-as-simply-as-possible/#content-1-4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohlsearch<CR><C-L>

"------------------------------------------------------------
" show cursor
" https://qiita.com/koara-local/items/57b5f2847b3506a6485b
set cursorline

" https://vimblog.hatenablog.com/entry/vimrc_set_display_options
set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
set list           " 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

" https://vimblog.hatenablog.com/entry/vimrc_set_cursor_movement_options
set scrolloff=8                "上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" https://vimblog.hatenablog.com/entry/vimrc_set_file_handling_options
set autoread "外部でファイルに変更がされた場合は読みなおす
set nobackup "ファイル保存時にバックアップファイルを作らない
set noswapfile "ファイル編集中にスワップファイルを作らない

" https://vimblog.hatenablog.com/entry/vimrc_set_search_replace_options
set incsearch "インクリメンタルサーチを行う
set wrapscan "最後尾まで検索を終えたら次の検索で先頭に移る

" https://vimblog.hatenablog.com/entry/vimrc_set_tab_indent_options
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" https://vimblog.hatenablog.com/entry/vimrc_set_cmdline_options
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

" https://vimblog.hatenablog.com/entry/vimrc_key_mapping
nnoremap ; :

" https://vimblog.hatenablog.com/entry/vimrc_key_mapping_examples
nnoremap j gj
nnoremap k gk

" https://vimblog.hatenablog.com/entry/vimrc_key_mapping_examples
nnoremap n nzz
nnoremap N Nzz

" enable 256 color
set t_Co=256

" https://knowledge.sakura.ad.jp/23248/
" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.local/share/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}
