# NOTE: Multi-stage builds

FROM gcc:9.2.0

COPY hello.c /
RUN gcc -static -o hello hello.c


FROM scratch

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"
COPY --from=0 hello /
CMD ["/hello"]
