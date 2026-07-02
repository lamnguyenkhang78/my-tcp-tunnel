FROM alpine:latest
WORKDIR /app
COPY frpc frpc
COPY frpc.toml frpc.toml
COPY start.sh start.sh
RUN chmod +x frpc start.sh
# Render yêu cầu port 8080 hoặc port từ biến môi trường $PORT
EXPOSE 8080
CMD ["./start.sh"]
