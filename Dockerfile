# build stage
FROM rust:1.70.0-slim-bullseye as build

ARG APP_NAME=hello-actix


WORKDIR /build

COPY Cargo.toml Cargo.lock ./

RUN mkdir src \
    && echo "// dummy file" > src/lib.rs \
    && cargo build --release 

COPY src src

RUN cargo build --locked --release

RUN cp ./target/release/${APP_NAME} /bin/server

# final stage
FROM debian:bullseye-slim AS final

COPY --from=build /bin/server /bin/

CMD ["/bin/server"]