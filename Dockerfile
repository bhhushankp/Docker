FROM golang:latest-alpine
COPY . /go/src/app
WORKDIR /go/src/app
COPY go.mod go.sum ./
RUN go mod download
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]
