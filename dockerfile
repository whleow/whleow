FROM asmttpd:0.4.5
COPY web_root/* /web_root/
CMD ["/asmttpd", "/web_root", "8080"]