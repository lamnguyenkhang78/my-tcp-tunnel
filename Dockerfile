# Sử dụng base image Alpine nhẹ và ổn định
FROM alpine:latest

# Cài đặt ttyd, bash và các công cụ cần thiết
# -W: Bật chế độ cho phép ghi (Write) - sửa lỗi không gõ được lệnh
RUN apk add --no-cache ttyd bash curl htop vim

# Thiết lập cổng 8080
EXPOSE 8080

# Chạy ttyd với các tham số:
# -p 8080: Cổng chạy web
# -W: Cho phép viết lệnh vào terminal
# -c ${TTY_PASS:-admin:123456}: Sử dụng biến môi trường TTY_PASS hoặc mặc định
# bash: Chạy trình thông dịch bash
CMD ["ttyd", "-p", "8080", "-W", "-c", "admin:123456", "bash"]
