# build stage
FROM golang:1.13.4 AS builder

ENV GO111MODULE auto
ENV CGO_ENABLED=0

ADD . /src
WORKDIR /src
RUN make build

# final stage
FROM scratch

ARG app-name="go-template"

WORKDIR /app
COPY --from=builder /src/bin/${app_name} /app/
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

ENTRYPOINT ["./${app_name}"]
