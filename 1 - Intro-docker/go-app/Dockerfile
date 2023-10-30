## BUILD STAGE
FROM golang AS build
WORKDIR /usr/app/src
COPY vendor .
COPY . .
RUN make build-linux

## RUN STAGE
FROM golang:alpine
WORKDIR /usr/app/src
COPY --from=build /usr/app/src/out/go-app .
CMD ["./go-app"]
