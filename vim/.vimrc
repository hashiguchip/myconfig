" 色付けを行う
syntax on

" viの互換モードではなく、vimモードにする
set nocompatible

" インデントと改行を削除できるようにする
set backspace=indent,eol,start

" 行頭に行番号を表示する（今はコメントアウト）
set number

" キーマップの変更
inoremap <silent> kj <ESC>
" 十字キー変更したかったらいじってください
noremap l l
noremap k k
noremap j j
noremap h h

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

" Initialize plugin system
" endは必須
call plug#end()
"vim-plugここまで--------------------------------------------------------------------------------

