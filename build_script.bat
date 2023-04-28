@echo off

# Pull the latest versions of the submodules
git submodule init || (exit /b)
git submodule update --remote || (exit /b)

cmake -S ./ -B ./build || (exit /b)
pause