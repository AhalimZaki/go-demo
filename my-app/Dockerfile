FROM golang:1.22.3-bookworm AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build -o /myapp .

FROM gcr.io/distroless/base-debian12

COPY --from=build /myapp /myapp

EXPOSE 8080
ENTRYPOINT ["/myapp"]

#how to test the image

# http://localhost:8080/health
# http://localhost:8080/hostname
# http://localhost:8080/
# http://localhost:8080/ping
#wget https://go.dev/dl/go1.23.1.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.23.1.linux-amd64.tar.gz
#export PATH=$PATH:/usr/local/go/bin