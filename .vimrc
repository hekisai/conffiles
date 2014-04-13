"vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off

" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'fuenor/qfixhowm'

" github にあるプラグイン
"Bundle 'user_name/repository_name'
Bundle 'Shougo/neocomplete.vim'

" vim-scripts プラグイン
"Bundle 'git://repository_url'

" github にないプラグイン
"Bundle 'plugin_name'

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

" neocomplete setting
let g:neocomplete#enable_at_startup = 1

"Markdown Pluginインストール

".mdなどのvimのMarkdownテキストを開いたらvimにMarkdown形式と認識させ、シンタックスハイライトを行うプラグイン
Bundle 'Markdown'

"vimとMarkdownリアルタイムプレビューサーバvim-instant-makdown-dを連携させるためのプラグイン
Bundle 'suan/vim-instant-markdown'



"qfixhown設定
set runtimepath+=~/path/to/qfixapp
"Dropboxフォルダに howmフォルダを作るように howm_dir を設定する
let howm_dir = '~/Dropbox/howm'
"Html出力先
let HowmHtml_htmldir = '/Dropbox/howm/html_dir'


" QfixHowm + Markdown
let QfixHowm_HowmMode		= 0
let QfixHowm_Title		= '#'
let suffix			= 'mkd'
let QfixHowm_UserFileType	= 'markdown'
let QfixHowm_UserFileExt	= suffix
let howm_filename		= '%Y%m%Y-%m-%d-%H%M%S.' .suffix

"ファイル形式の検出on/off
filetype plugin on

"拡張子をmarkdownと認識させる
autocmd BufRead,BufNewFile *.mkd  setfiletype markdown
autocmd BufRead,BufNewFile *.md  setfiletype markdown

autocmd CursorHold *  wall
autocmd CursorHoldI *  wall


"############
"標準形
"############
"入力関係
set backspace=indent,eol,start  "BSでなんでも消せるようにする
set autoindent  "新しい行のインデントを現在行と同じにする
set smartindent
set showmatch "綴じ括弧の入力時に対応する括弧を表示する。
""閉じ括弧が入力されたとき、対応する括弧を表示する
set wildmenu    "補完候補を表示する
set clipboard+=unnamed   "クリップボードをWindowsと連携
set autowrite "自動保存
set autoindent "オートインデント

"表示関係
syntax on       "文字に色を付ける
set number      "行番号表示
set ruler       "ルーラー表示(ステータスライン変えてるから意味ない)
set title       "ウィンドウのタイトルを書き換える
set cursorline  "カーソル行を強調表示
set hlsearch     "検索結果をハイライト
set showmode     "現在のモードを表示
colorscheme molokai
"set list       "改行コードを表示する
set hidden "バッファを保存しなくても他のバッファを表示できるようにする
set wildmenu "コマンド補完を便利に
set showcmd "タイプ途中のコマンドを画面最下行に表示


"□や○の文字があってもカーソル位置がずれないようにする。
set ambiwidth=double

"カラースキーム設定
highlight Comment ctermfg=Green
highlight Constant ctermfg=Red
highlight Identifier ctermfg=Cyan
highlight Statement ctermfg=Yellow
highlight Title ctermfg=Magenta
highlight Special ctermfg=Magenta
highlight PreProc ctermfg=Magenta

