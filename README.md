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
   Cửa hàng hoa Thái Nguyên là một cửa hàng chuyên cung cấp các loại hoa tươi dùng cho nhiều mục đích như: hoa sinh nhật, hoa cưới, hoa sự kiện, hoa chia buồn,..Hiện nay, hoạt động quản lý tại cửa hàng vẫn được thực hiện thủ công như ghi chép đơn hàng, quản lý khách hàng và hàng tồn kho bằng sổ tay hoặc bảng tính Excel. Điều này gây ra nhiều khó khăn trong việc
   
 Yêu cầu bài toán :
- Quản lý sản phẩm (hoa và phụ kiện):

   Thêm, sửa, xóa thông tin hoa và phụ kiện (tên, loại, đơn giá, ngày nhập, hạn sử dụng...).

   Theo dõi số lượng tồn kho.

- Quản lý khách hàng:

   Lưu trữ thông tin khách hàng (họ tên, số điện thoại, địa chỉ, lịch sử mua hàng).

- Quản lý đơn hàng/đặt hoa:

   Tạo đơn hàng mới (chọn sản phẩm, số lượng, ghi chú, ngày giao).

   Ghi nhận thông tin khách hàng, thời gian đặt hàng và giao hàng.

   Cập nhật trạng thái đơn hàng (đang xử lý, đã giao, đã hủy...).

- Quản lý nhà cung cấp:

   Lưu thông tin các nhà cung cấp hoa và phụ kiện.

   Theo dõi các lần nhập hàng từ nhà cung cấp.

- Báo cáo – thống kê:

   Thống kê doanh thu theo ngày, tháng, năm.

   Thống kê các sản phẩm bán chạy.

   Thống kê lượng tồn kho.

  
