"source $VIMRUNTIME/defaults.vim

"-----------------------------------
" BASE
"-----------------------------------
set number
set laststatus=2
set cursorline
syntax enable
set hlsearch
set clipboard+=unnamed
set wildmenu

" 不可視文字を表示
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%,space:_

"-----------------------------------
" vim-plug
"  PlugInstall
"  PlugUpdate
"  PlugClean
"-----------------------------------
call plug#begin()
"Plug 'w0ng/vim-hybrid', {'do': 'cp colors/* ~/.vim/colors/'}
"Plug 'w0ng/vim-hybrid'
Plug 'cocopon/iceberg.vim'
call plug#end()

"-----------------------------------
" DESIGN
"-----------------------------------
set background=dark
colorscheme iceberg

" --------------------------------------
" カスタム
" --------------------------------------
" <Leader>というプレフィックスキーにスペースを使用する
let g:mapleader = "\<Space>"

" ペーストモード切り替え
nnoremap <Leader>pa :set paste!<CR>

" Escを2回押すとハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>

" オペレーター待機モードのマッピング
" 一例：c8 で ci( の動きになる
"onoremap 8 i(
"onoremap 2 i"
"onoremap 7 i'
"onoremap @ i`
"onoremap [ i[
"onoremap { i{

" バックスペース無効
inoremap <BS> <Nop>

" --------------------------------------
" tips
" --------------------------------------
"mapとnoremap
"  map  キー入力を別のキーに割り当てる
"    map <C-a> <C-x>
"    map t <C-a>
"      -> tを押すと<C-x>を実行
"  
"  noremap  再起的に割り当てない。理由がなければ誤動作しないようにこちらを設定
"    map <C-a> <C-x>
"    noremap t <C-a>
"      -> tを押すと<C-a>を実行
"
"  プレフィックス
"    なし: ノーマル、ビジュアル、選択、オペレータ待機
"    n:    ノーマル
"    v:    ビジュアル、選択
"    s:    選択
"    x:    ビジュアル
"    o:    オペレータ待機
"    i:    挿入
"    l:    挿入、コマンドライン、Lang-Arg
"    c:    コマンドライン
"
