#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
skip_global_compinit=1

# Add ~/.local/bin to $PATH (uv & mise), without duplicate entries
typeset -U path PATH
path=("$HOME/.local/bin" $path)

# Load environment files in numeric filename order
if [ -d $HOME/.zsh/env ]; then
  for file in $HOME/.zsh/env/*.zsh(N); do
    source $file
  done
fi
