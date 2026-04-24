FROM rust:latest

WORKDIR /app

COPY Cargo.toml Cargo.lock ./
COPY grader/ grader/
COPY shared/ shared/
COPY student-cli/ student-cli/

RUN cargo build --release -p grader

CMD ["./target/release/grader"]
