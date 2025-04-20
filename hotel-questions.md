# سوالات

1. نمایش نام، شهر، کشور، و تعداد اتاق‌های هر هتل
2. اتاق‌های در دسترس برای هتل "Grand Paradise"
3. نمایش هتل‌هایی که دارای ریتینگ بیشتر از 4 هستند
4. تعداد رزروهای انجام شده برای هر مشتری
5. لیست پرداخت‌های انجام شده برای رزروهای تأیید شده
6. نمایش گران‌ترین اتاق از هر نوع (Deluxe, Standard, ...) در تمام هتل‌ها
7. مشتریانی که هنوز رزروشان پرداخت نشده (رزرو تأیید شده اما در جدول Payments وجود ندارد)
8. لیست هتل‌هایی که حداقل 3 سرویس رفاهی (amenities) دارند
9. مجموع درآمد از پرداختی‌ها برای هر هتل
10. رزروهایی که بیش از ۵ شب هستند

# جواب ها
1. 
```sql
SELECT name, city, country FROM hotels;
```

2. 
```sql
SELECT rooms.room_number, rooms.room_type, hotels.name AS hotel_name
FROM rooms
JOIN hotels ON rooms.hotel_id = hotels.id;
```

3. 
```sql
SELECT customers.name, reservations.status
FROM reservations
JOIN customers ON reservations.customer_id = customers.id;
```
4. 
```sql
SELECT hotels.name, COUNT(rooms.id) AS room_count
FROM hotels
JOIN rooms ON hotels.id = rooms.hotel_id
GROUP BY hotels.id;
```

5. 
```sql
SELECT hotels.name, ROUND(AVG(rooms.price), 2) AS avg_price
FROM hotels
JOIN rooms ON hotels.id = rooms.hotel_id
GROUP BY hotels.id;
```
6.  
```sql
SELECT hotels.name, AVG(rooms.price) AS avg_price
FROM hotels
JOIN rooms ON hotels.id = rooms.hotel_id
GROUP BY hotels.id
HAVING AVG(rooms.price) > 150;
```

7. 
```sql
SELECT payment_method, MAX(amount) AS max_payment
FROM payments
GROUP BY payment_method;
```
8. 
```sql
SELECT room_number, room_type
FROM rooms
WHERE id NOT IN (SELECT room_id FROM reservations);
```
9. 
```
SELECT customers.name, SUM(payments.amount) AS total_paid
FROM payments
JOIN reservations ON payments.reservation_id = reservations.id
JOIN customers ON reservations.customer_id = customers.id
GROUP BY customers.id;
```


10.
```sql
SELECT DISTINCT customers.name
FROM customers
JOIN reservations ON customers.id = reservations.customer_id
JOIN rooms ON reservations.room_id = rooms.id
JOIN hotels ON rooms.hotel_id = hotels.id
WHERE reservations.status = 'confirmed' AND hotels.total_rooms > 100;
```
# نتیجه جواب ها

1. 
| name              | city     | country |
|-------------------|----------|---------|
| Grand Palace Hotel| New York | USA     |
| Sea Breeze Resort | Miami    | USA     |
| Royal Stay Inn    | London   | UK      |

2. 
| room_number | room_type       | hotel_name         |
|-------------|------------------|--------------------|
| 101         | Deluxe Suite     | Grand Palace Hotel |
| 102         | Standard Room    | Grand Palace Hotel |
| 201         | Ocean View Suite | Sea Breeze Resort  |
| 202         | Garden Room      | Sea Breeze Resort  |
| 301         | Single Room      | Royal Stay Inn     |
| 302         | Double Room      | Royal Stay Inn     |

3. 
| name           | status    |
|----------------|-----------|
| Alice Johnson  | confirmed |
| Bob Smith      | confirmed |
| Charlie Adams  | pending   |
| Alice Johnson  | cancelled |

4. 
| name              | room_count |
|-------------------|------------|
| Grand Palace Hotel| 2          |
| Sea Breeze Resort | 2          |
| Royal Stay Inn    | 2          |

5. 
| name              | avg_price |
|-------------------|-----------|
| Grand Palace Hotel| 200.00    |
| Sea Breeze Resort | 240.00    |
| Royal Stay Inn    | 110.00    |

6. 
| name              | avg_price |
|-------------------|-----------|
| Grand Palace Hotel| 200.00    |
| Sea Breeze Resort | 240.00    |

7. 
| payment_method | max_payment |
|----------------|-------------|
| Credit Card    | 1000.00     |
| PayPal         | 1500.00     |

8. 
| room_number | room_type    |
|-------------|--------------|
| 302         | Double Room  |

9. 
| name          | total_paid |
|---------------|------------|
| Alice Johnson | 1000.00    |
| Bob Smith     | 1500.00    |

10. 
| name          |
|---------------|
| Alice Johnson |
| Bob Smith     |
