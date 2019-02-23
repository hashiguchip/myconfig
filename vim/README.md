# vim

## Setup
### symbolic link
ln -s ~/myconfig/vim/.vimrc ~/.vimrc

## クリップボードの設定

`set clipboard+=unnamed`だけでは不十分

vimが有効になっているか確認する


vim --version | grep clipboard

## .vimrcの更新
vimを一旦閉じる

or

`:source ~/.vimrc`
