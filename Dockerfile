# Sử dụng base image nhẹ nhất
FROM alpine:latest

# Cài đặt ttyd, bash và các tool cơ bản
RUN apk add --no-cache ttyd bash curl htop vim

# Thiết lập cổng mặc định
EXPOSE 8080

# Chạy ttyd trực tiếp với mật khẩu lấy từ biến môi trường TTY_PASS
# Nếu không đặt biến môi trường, nó sẽ dùng mặc định là admin:123456
CMD sh -c 'ttyd -p 8080 -c ${TTY_PASS:-admin:123456} bash'
