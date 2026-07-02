FROM alpine:latest

# Cài đặt ttyd và các công cụ cần thiết
RUN apk add --no-cache ttyd bash htop curl

# Tạo user để bảo mật (tùy chọn)
RUN adduser -D terminaluser

# Expose cổng 8080 (Render mặc định dùng cổng này)
EXPOSE 8080

# Chạy ttyd khi container khởi động
CMD ["ttyd", "-p", "8080", "bash"]
