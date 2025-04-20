# سوالات
1. نام و ایمیل تمام کاربرانی که حداقل یک سفارش با وضعیت completed دارند.

2. چه تعداد محصول در انبار موجودی کمتر از ۲۰ عدد دارند؟

3. نام و قیمت محصولاتی که در دسته‌بندی “Smartphones” هستند.

4. برای سفارش شماره 1، چه آیتم‌هایی سفارش داده شده؟ (نام محصول، تعداد، قیمت واحد)

5. کاربرانی که هیچ سفارشی ثبت نکرده‌اند.

6. میزان درآمد کلی فروشگاه از سفارش‌های completed

7. پرفروش‌ترین محصول بر اساس تعداد فروخته‌شده (در کل سفارش‌ها)

# جواب

1. 
```sql
SELECT DISTINCT u.name, u.email
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.status = 'completed';
```
2. 
```sql
SELECT COUNT(*) AS low_stock_count
FROM inventory
WHERE quantity < 20;
```
3. 
```sql
SELECT p.name, p.price
FROM products p
JOIN categories c ON p.category_id = c.id
WHERE c.name = 'Smartphones';
```
4. 
```sql
SELECT p.name, oi.quantity, oi.price
FROM order_items oi
JOIN products p ON oi.product_id = p.id
WHERE oi.order_id = 1;
```
5. 
```sql
SELECT u.name, u.email
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;
```
6.  
```sql
SELECT SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'completed';
```
7.  
```sql
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 1;
```

# نتیجه کویری ها

1. 
|         name              |         email                                       |
| ------- | ------- |
| Ali Mohammadi    | ali.mohammadi@example.com |
| Sara Ahmadi          | sara.ahmadi@example.com       |
| Fatemeh Zarei       | fatemeh.zarei@example.com     |
| Narges Safari         | narges.safari@example.com      |
| Mohammad Jafari | m.jafari@example.com                |
| Milad Rastegar       | milad.rastegar@example.com  |

2. 
| low_stock_count |
| --------------- |
|        3        |

3.  

|     name    |  price  |
| ----------- | ------- |
| iPhone 13   |  999.99 |
| Galaxy S22  |  899.99 |

4. 

| Name         | Quantity | Price  |
|--------------|----------|--------|
| iPhone 13    | 1        | 999.99 |
| The Alchemist| 1        | 14.99  |
| T-shirt      | 2        | 12.99  |
| Sapiens      | 1        | 24.99  |

5. 

|     name      |          email            |
| ------------- | ------------------------- |
| Zahra Khademi | zahra.khademi@example.com |


6. 
| total_revenue |
| ------------- |
|    3230.90    |

7. 
|      name     | total_sold |
| ------------- | ---------- |
| The Alchemist |      5     |
