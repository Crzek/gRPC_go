# Pasos

## crear modulo en Go
```shell
go mod init github.com/username/repo
go mod init platzi.com/go/grpc
```


### Instalar protoc
```shell
apt install -y protobuf-compiler
protoc --version 

go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

# otras dependencias
go get google.golang.org/protobuf

# generar el codigo
protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative proto/student.proto
```