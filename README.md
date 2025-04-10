
# Hướng Dẫn Cài Đặt Hệ Thống Quản Lý Tiệm Cắt Tóc Nam (Men Salon Management System)

## 📥 Cài Đặt

1. Tải file zip hệ thống về máy.
2. Giải nén và copy thư mục `msms`.
3. Dán thư mục `msms` vào thư mục gốc của máy chủ web:
   - XAMPP: `xampp/htdocs`
   - WAMP: `wamp/www`
   - LAMP: `var/www/html`
4. Mở trình duyệt và truy cập [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
5. Tạo database với tên **msmsdb**
6. Import file `msmsdb.sql` (nằm trong thư mục SQL file của gói zip).
7. Chạy hệ thống qua đường dẫn: [http://localhost/msms](http://localhost/msms)

### 🔐 Thông Tin Đăng Nhập Quản Trị
- Username: `admin`
- Password: `Test@123#`

---

## 🧠 CTF Challenge – RootCuts Barber's Hidden Agenda

### 🕵️ Cốt Truyện:
- Một tiệm barber tưởng chừng như bình thường có tên **RootCuts Barber** vừa mới khai trương giao diện quản trị mới cho trang web của mình. Nhưng có gì đó không ổn... Một số chuyên gia an ninh mạng phát hiện ra rằng có dữ liệu lạ được ẩn giấu ngay bên trong source code và tài nguyên của website.

- Dường như admin đã giấu một đoạn mã quan trọng – thứ mà có thể liên quan đến một cuộc thử nghiệm hoặc... một hệ thống backdoor nào đó. Tin đồn lan truyền rằng flag đang bị ẩn trong plain sight, và bạn – một pentester tài ba – đã được thuê để kiểm tra tính bảo mật của hệ thống.

### 🧩 Nhiệm Vụ:
Tìm và giải mã flag được giấu kín trong hệ thống, có thể là thông qua:

- Mã nguồn HTML/PHP
- File CSS/JS bất thường
- Metadata hình ảnh
- Kỹ thuật giấu dữ liệu (Steganography)
- Base64/Hex/ROT/xor hoặc kỹ thuật mã hóa nhẹ

> 🔖 Flag có dạng chuẩn: `CTF{...}`

### 🧰 Kỹ Năng Cần Thiết:
- Basic Web Recon (View Source, Burpsuite, Inspect Tool)
- HTML/CSS/PHP Inspection
- Steganography Tools (Steghide, exiftool, binwalk)
- Decode/Encode kỹ thuật cơ bản
- Tư duy giấu tin và kỹ năng khai thác
