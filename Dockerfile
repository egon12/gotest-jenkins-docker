FROM golang:1.10-alpine

# install dep
RUN wget -O- -nv https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# golangci-lint
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.25.0

# Get ghr (github reviewer)
RUN wget -O /usr/bin/ghr https://github.com/egon12/ghr/releases/download/v0.0.1/ghr 
RUN chmod a+x /usr/bin/ghr

RUN apk add rsync git

CMD sh
