source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Load the theme.
antigen theme steeef

# Install other zsh plugins.
antigen bundle bobthecow/git-flow-completion

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

# Load custom files
# Load all files in .zsh directory
if [ -d $HOME/.zsh ]; then
  for file in $HOME/.zsh/*.zsh; do
    source $file
  done
fi
# Load all files in .zsh/local directory
if [ -d $HOME/.zsh/local ]; then
  for file in $HOME/.zsh/local/*.zsh; do
    source $file
  done
fi

# access to online help
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# activate zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
