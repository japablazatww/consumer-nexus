FROM golang:1.23-alpine

WORKDIR /app

COPY . .

RUN go build -mod=vendor -o consumer-app .

CMD ["./consumer-app"]
