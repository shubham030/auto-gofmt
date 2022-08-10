FROM golang:1.16-alpine

RUN go install mvdan.cc/gofumpt@latest
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
