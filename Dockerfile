FROM debian:stretch-slim

WORKDIR /app

RUN apt-get update && apt-get install --no-install-recommends -y gcc

RUN apt-get update && apt-get install --no-install-recommends -y libc6-dev

RUN bash -c 'echo -e "#include<stdio.h>\nint main(){printf (\"fooobar\\\\n\"); return 0;}" > /app/main.c'
RUN gcc -Wall -Wextra /app/main.c

CMD ["/app/a.out"]

