#
## Environment
#

# Set editors
export EDITOR=nvim
export VISUAL=gedit

# Set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/default

# Neverlang env
export NEVERLANG_HOME=$HOME/.local/lib/neverlang2-1.2

# Add stuff to PATH
export PATH=$NEVERLANG_HOME/bin:$JAVA_HOME/bin:$HOME/.local/bin:$PATH

# Select cargo install folder
export CARGO_INSTALL_ROOT=/usr/bin
