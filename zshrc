source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme steeef

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
