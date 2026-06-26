#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
skip_global_compinit=1

# Add ~/.local/bin to $PATH (uv & mise)
export PATH="$HOME/.local/bin:$PATH"

# Load all files in .zsh directory
if [ -d $HOME/.zsh/env ]; then
  for file in $HOME/.zsh/env/*.zsh(N); do
    source $file
  done
fi