#KISS COMPILE CONFIGS
export CFLAGS="-O3 -pipe -march=native"
export CXXFLAGS="$CFLAGS"
export MAKEFLAGS="-j8"
export KISS_PATH=''

#KISS REPOS
KISS_PATH=/var/db/kiss/repo/core
KISS_PATH=/var/db/kiss/repo/extra
KISS_PATH=/var/db/kiss/repo/wayland
KISS_PATH=/var/db/kiss/community/community
KISS_PATH=$KISS_PATH:/var/db/kiss/repo/core
KISS_PATH=$KISS_PATH:/var/db/kiss/repo/extra
KISS_PATH=$KISS_PATH:/var/db/kiss/repo/wayland
KISS_PATH=$KISS_PATH:/var/db/kiss/community/community

#FIREFOX WAYLAND CONFIGS
export XDG_RUNTIME_DIR=/tmp
export MOZ_WAYLAND_DRM_DEVICE=/dev/dri/renderD128

#ASHRC
export ENV=~/.ashrc

#NPM BINARIES
export PATH="$PATH:$HOME/.npm/bin"

#PIP BINARIES
export PATH="${PATH}:${HOME}/.local/bin/"

#AUTO INIT SWAY
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
        exec sway
fi
