FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install base dependencies
RUN apt -q update
RUN apt -qy install bison build-essential gawk gettext openssl python3 texinfo curl cmake gdb software-properties-common

# Install modern GCC
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt -q update
RUN apt -qy install gcc-11 g++-11

# Install Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN $HOME/.cargo/bin/rustup target add x86_64-unknown-linux-gnu
RUN $HOME/.cargo/bin/rustup default nightly
RUN $HOME/.cargo/bin/rustup component add rust-src
RUN $HOME/.cargo/bin/cargo install xargo
RUN $HOME/.cargo/bin/cargo install cross