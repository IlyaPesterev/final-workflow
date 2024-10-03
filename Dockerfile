FROM golang:1.23.0

WORKDIR /app

COPY . .

RUN go mod tidy

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go build -o /homework

CMD ["/homework"]