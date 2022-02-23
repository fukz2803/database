-- Lấy ra các quyển sách được xuất trước năm 1900
SELECT b.title , b.year_of_publication 
FROM book b
WHERE b.year_of_publication < 1900

-- Lấy ra các quyển sách có số lượng trang dưới 100
SELECT b.title , b.page_number 
FROM book b 
WHERE b.page_number < 100

-- Liệt kê các quyển sách có id_publisher = 1 và sắp xếp theo thứ tự tăng dần của số trang
SELECT b.title , b.id_publisher , b.page_number 
FROM book b
WHERE b.id_publisher = 1
ORDER BY b.page_number ASC 
