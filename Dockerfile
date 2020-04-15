FROM alpine:3

RUN apk add --no-cache clang python3

ADD run-clang-format/run-clang-format.py /usr/bin

WORKDIR /src
ENTRYPOINT ["python3", "/usr/bin/run-clang-format.py"]

