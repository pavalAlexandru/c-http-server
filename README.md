# C HTTP Server

A minimal, from-scratch HTTP/1.1 server written in C11. 

This is an educational project built to deeply understand POSIX sockets, TCP/IP networking, and the HTTP protocol under the hood. It relies entirely on standard Linux system calls with no external networking libraries.

## 🛠️ Tech Stack & Tooling
* **Language:** C (C11 Standard)
* **Build System:** CMake + Ninja
* **Command Runner:** [Just](https://github.com/casey/just)
* **Memory Profiling:** Valgrind
* **Compiler Flags:** Strict (`-Wall -Wextra -pedantic`)

## ⚙️ Prerequisites
To build and run this project, you need a C compiler, CMake, Ninja, Just, and Valgrind. Install them using your distribution's package manager:

```bash
# Fedora / RHEL
sudo dnf install cmake ninja-build just valgrind

# Arch Linux
sudo pacman -S cmake ninja just valgrind

# Ubuntu / Debian
sudo apt install cmake ninja-build just valgrind

# macOS (using Homebrew)
brew install cmake ninja just valgrind
