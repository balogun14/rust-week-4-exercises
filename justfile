set shell := ["powershell.exe", "-Command"]

run:
    cargo run

add crate_name:
    cargo add {{crate_name}}

format:
	cargo fmt

test:
	cargo test --test unit_tests

backtrace:
    set RUST_BACKTRACE=1 ; cargo test --test unit_tests

clippy:
	cargo clippy

clippy-fix:
	cargo clippy --fix --allow-dirty --allow-staged

explain code:
    rustc --explain {{code}}