# bai-tap-5
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

# A
#ĐỒ ÁN PT&TKHT : PHÂN TÍCH THIẾT KẾ CỬA HÀNG HOA THÁI NGUYÊN
1. Mô tả bài toán :
  # TẠO DATABASE
  ![image](https://github.com/user-attachments/assets/764b9b91-5e5e-4b6b-a78c-d9b3f998a065)
# TẠO CÁC TABLE
#TẠO BẢNG KHACH_HANG 
![image](https://github.com/user-attachments/assets/a155e38f-d181-4dbe-b43a-0f9c5f209969)

#PK

![image](https://github.com/user-attachments/assets/b6589d06-b8f4-46b2-a439-65db23f4431c)

#CK

![image](https://github.com/user-attachments/assets/d9fca847-9888-4321-b231-2e923e7894d0)

# TẠO BẢNG NHAN_VIEN
#PK

![image](https://github.com/user-attachments/assets/f0e8b839-0368-47ec-b8ba-05cde4449288)

#CK

![image](https://github.com/user-attachments/assets/ded797c0-a18e-45e7-b4ea-f373d5e13462)

# TẠO BẢNG CHITIETHOADON
#PK

![image](https://github.com/user-attachments/assets/ae512807-942b-45f9-8e00-539d5161e334)

#FK

![image](https://github.com/user-attachments/assets/26b8d3d5-b911-4df1-bf6e-917418dcaa71)
![image](https://github.com/user-attachments/assets/365e3f83-3d0b-4df4-abff-897624567e71)

#CK

![image](https://github.com/user-attachments/assets/245c76d1-e11e-4329-853d-3faca317f050)

# TẠO BẢNG DONHANG
#PK

![image](https://github.com/user-attachments/assets/15547254-2512-455a-bfa3-d7360c25df6b)

#FK

![image](https://github.com/user-attachments/assets/8e2ea6dc-8187-40ce-aab7-324ca01a7e74)
![image](https://github.com/user-attachments/assets/3310907a-4d4b-411a-84dc-8bce7ffd56ec)

#CK

![image](https://github.com/user-attachments/assets/8c05dd26-292b-4830-bc29-5959b129cd4a)

# TẠO BẢNG NHAPKHO
#PK

![image](https://github.com/user-attachments/assets/482519c3-d043-4769-a675-50f3df592853)

#FK

![image](https://github.com/user-attachments/assets/7f956a51-bc06-4872-806f-aedbc776ce2b)

#CK

![image](https://github.com/user-attachments/assets/e1741a8e-fbf6-45ad-8f38-26152a151f62)

# TẠO BẢNG SANPHAM
#PK

![image](https://github.com/user-attachments/assets/2768e8bd-a9fa-489d-a5be-40be007a964d)

#CK

![image](https://github.com/user-attachments/assets/76105dde-f3d3-4775-a564-11beaff93e48)

# TẠO BẢNG LIÊN KẾT 
![image](https://github.com/user-attachments/assets/c7e0034e-aa51-4eb6-a915-6dac47280ce8)
B. Nội dung Bài tập 05:

- Tạo csdl cho hệ thống quản lý cửa hàng hoa Thái Nguyên
- Bổ sung thêm trường phi chuẩn: Tổng số tiền lệch
- Viết trigger cho bảng đơn hàng
  Bấm vào dấu "+" của bảng donhang và chuột phải vào trigger rồi ấn new trigger

![image](https://github.com/user-attachments/assets/cfe66526-9690-4489-b504-4d9c8236d14e)

Trigger lệch số tiền

![Screenshot 2025-04-23 103107](https://github.com/user-attachments/assets/4fa12ce4-ba8a-4c02-bdda-b49e3e87f36a)

Kết quả

![Screenshot 2025-04-23 103155](https://github.com/user-attachments/assets/7aaef824-7da7-4a0f-a455-e9385a2634cd)


