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
" 十字キー
noremap l l
noremap k k
noremap j j
noremap h h

set clipboard+=unnamed
