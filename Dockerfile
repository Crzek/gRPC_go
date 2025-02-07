FROM golang:bookworm

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN apt update && apt install protobuf-compiler -y && \
    go get google.golang.org/protobuf

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

RUN protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/student.proto

# CMD [ "/bin/sh" ]
CMD [ "bash" ]