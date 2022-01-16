# NOTE: Multi-stage builds

FROM gcc:8.2.0

COPY hello.c /
RUN gcc -static -o hello hello.c


FROM scratch

LABEL maintainer="Ryo Ota <nwtgck@nwtgck.org>"
COPY --from=0 hello /
CMD ["/hello"]
