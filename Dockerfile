FROM golang:1.24.4

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /docker_final_app

CMD ["/docker_final_app"]