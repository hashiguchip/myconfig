#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.  Environment Configuration
#  2.  Aliases
#  3.  Scripts
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
    export PS2="| => "

#   Set Paths
#   ------------------------------------------------------------
    export PATH=${PATH}:$HOME/bin

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=GxFxCxDxBxegedabagaced


#   -----------------------------
#   2. Aliases
#   -----------------------------

alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias cdh='cd ~/'                           # cd to home

#   -------------------------------
#   3. Scripts
#   -------------------------------

#
#    mkdir + touch
#
mkdirf() {
    mkdir -p $( dirname "$1") && touch "$1"
}


#   -------------------------------
#   3. Import Setting
#   -------------------------------
#   PC固有で設定を持ちたい場合のために外部ファイルからimportできるようにする
#   ------------------------------------------------------------

for file in ~/myconfig/bash/bash_profile/*
do
  source ${file}
done
