FROM golang:latest

WORKDIR /go

COPY my_app /go/

RUN go get github.com/dtauraso/cs385lab34
CMD ["./my_app"]
