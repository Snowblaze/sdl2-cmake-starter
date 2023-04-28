set -e

# Pull the latest versions of the submodules
git submodule init
git submodule update --remote

if [ "`uname -s`" = "Darwin" ]; then
  COMPILE_ARGS="-GXcode" 
else
  COMPILE_ARGS=
fi

cmake -S ./ -B ./build ${COMPILE_ARGS}
