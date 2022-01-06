### build stage ###
FROM ubuntu:18.04 as builder
RUN apt update
RUN apt install -y make yasm as31 nasm binutils 
COPY asmttpd/* .
RUN make release

### run stage ###
FROM scratch
COPY --from=builder /asmttpd /asmttpd
COPY web_root/* /web_root/
CMD ["/asmttpd", "/web_root", "8080"] 