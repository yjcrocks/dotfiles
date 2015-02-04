source .antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme steeef

# Tell antigen that you're done.
antigen apply

# Source other files
source .zsh/alias.zsh
source .zsh/path.zsh
