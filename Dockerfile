FROM golang:latest

WORKDIR /go

COPY fibonacci /go/

RUN go get github.com/dtauraso/cs385lab4

CMD ["./fibonacci"]
