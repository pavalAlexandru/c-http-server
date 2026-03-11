build_dir := "build"
exe := build_dir + "/server"

@default: run

@configure:
    echo "==> Configuring CMake with Ninja..."
    cmake -B {{ build_dir }} -G Ninja -S .
    @echo "==> Linking compile_commands.json for NeoVim..."
    ln -sf {{ build_dir }}/compile_commands.json .

@build: configure
    echo "==> Compiling..."
    cmake --build {{ build_dir }}

@run: build
    echo "==> Starting server..."
    ./{{ exe }}

@valgrind: build
    echo "==> Running under Valgrind..."
    valgrind --leak-check=full \
    	 --show-leak-kinds=all \
    	 --track-origins=yes \
    	 ./{{ exe }}

@clean:
    echo "==> Cleaning build artifacts..."
    rm -rf {{ build_dir }} compile_commands.json
