" 色付けを行う
syntax on

" viの互換モードではなく、vimモードにする
set nocompatible

" インデントと改行を削除できるようにする
set backspace=indent,eol,start

" 行頭に行番号を表示する（今はコメントアウト）
set number

" 自動改行無効
set textwidth=0

" キーマップの変更
inoremap <silent> kj <ESC>
" 十字キー変更したかったらいじってください
noremap l l
noremap i k
noremap k j
noremap j h
noremap <S-k> k
" ジャンプ
noremap <C-k><C-k> gg
noremap <C-k> G
" インサートモード
noremap d i
noremap f a

" クリップボードの共有
set clipboard+=unnamed

" vim-plug---------------------------------------------------------------------------------------
" vim-plug__Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug-setup
" 保存する場所を定義
call plug#begin('~/myconfig/vim/plugged')

" ショートハンドです 、コレの => https://github.com/junegunn/vim-easy-align

Plug 'junegunn/vim-easy-align'

Plug 'liuchengxu/space-vim-theme'

Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

" Initialize plugin system
" endは必須
call plug#end()
"vim-plugここまで--------------------------------------------------------------------------------

"liuchengxu/space-vim-themeのconfig
set background=dark
let g:space_vim_transp_bg = 1
let g:space_vim_filetype_hi_groups = 1
colorscheme space_vim_theme

" itchyny/lightline.vimのconfig
set laststatus=2
set t_Co=256

" scrooloose/nerdtreeのconfig
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
