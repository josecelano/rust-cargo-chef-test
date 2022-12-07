# Rust cargo chef test

I'm using [cargo-chef](https://github.com/LukeMathWalker/cargo-chef) to cache app dependencies in the dockerfile.

You can build the image with:

```s
./build.sh
```

This Dockerfile layer takes 214.7 seconds to build:

```s
RUN cargo build --release --target x86_64-unknown-linux-musl --bin rust-cargo-chef-test
```

It seems `cargo-chef` layer is not working. If you run again the build command without changing any dependency, it takes the same time again.
