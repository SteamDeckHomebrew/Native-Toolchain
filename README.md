# Native-Toolchain
Docker Image and scripts for easily compiling native applications (C, C++ and Rust) for the Steam Deck

## Usage

### Building docker container
```
$ git clone --recurse-submodules https://github.com/SteamDeckHomebrew/Native-Toolchain
$ cd Native-Toolchain
$ docker build -t "steam-deck-homebrew/toolchain" .
```

### Building Rust template
```
$ cargo install cross
$ cross build
```
