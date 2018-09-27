# build environment
FROM golang:1.11.0-stretch as builder
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main .

# running environment
FROM scratch
COPY --from=builder /app/main /
CMD ["/main"]