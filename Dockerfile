FROM golang:1.17-alpine

ARG PORT

ENV PORT $PORT

ENV APP_ROOT /home/app
WORKDIR $APP_ROOT

COPY go.mod go.sum main.go $APP_ROOT/
RUN go build -o app-server

EXPOSE $PORT

CMD go run .