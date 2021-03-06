[ -f ~/.profile ] && source ~/.profile

[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ] && source /usr/local/opt/chruby/share/chruby/chruby.sh
[ -f /usr/local/opt/chruby/share/chruby/auto.sh ] && source /usr/local/opt/chruby/share/chruby/auto.sh

[ -f ~/.zsh_custom ] && source ~/.zsh_custom

source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs-gui='open -a /Applications/Emacs.app $1'
alias work='cd ~/workspace/work'
alias personal='cd ~/workspace/personal'

em () {
  open -a /usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs $*
}

source /usr/local/share/antigen/antigen.zsh

[ `/usr/libexec/java_home &> /dev/null` $? -eq 0 ] && export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
}


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# fzf must come after antigen
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /Users/saylerb/.travis/travis.sh ] && source /Users/saylerb/.travis/travis.sh

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# BEGIN ANSIBLE MANAGED BLOCK - nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# END ANSIBLE MANAGED BLOCK - nvm

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

