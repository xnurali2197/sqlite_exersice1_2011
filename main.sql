
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    city TEXT NOT NULL,
    region TEXT NOT NULL,
    status TEXT DEFAULT 'active', 
    registered_at DATE NOT NULL,
    last_login DATE
);



INSERT INTO users (first_name, last_name, email, city, region, status, registered_at, last_login) VALUES
('Ali', 'Valiyev', 'ali.valiyev@gmail.com', 'Toshkent', 'Toshkent shahri', 'active', '2023-01-15', '2025-11-18'),
('Madina', 'Karimova', 'madina_k@mail.ru', 'Toshkent', 'Toshkent shahri', 'active', '2024-02-20', '2025-10-05'),
('Sarvar', 'Oripov', 'sarvar.oripov@gmail.com', 'Samarqand', 'Samarqand viloyati', 'active', '2024-04-10', '2025-11-03'),
('Gulnoza', 'Ismoilova', 'gulnoza.ism@gmail.com', 'Toshkent', 'Toshkent shahri', 'active', '2025-01-05', '2025-11-19'),
('Jamshid', 'Rahimov', 'jamshid_88@yahoo.com', 'Buxoro', 'Buxoro viloyati', 'inactive', '2023-06-30', '2024-09-12'),
('Shoxrux', 'Toshmatov', 'shoxrux.t@gmail.com', 'Farg''ona', 'Farg''ona viloyati', 'active', '2024-05-22', '2025-11-10'),
('Nilufar', 'Axmedova', 'nilufar.a@gmail.com', 'Andijon', 'Andijon viloyati', 'active', '2024-03-31', '2025-11-15'),
('Bobur', 'Ergashev', 'bobur.er@gmail.com', 'Toshkent', 'Toshkent shahri', 'active', '2024-08-12', '2025-11-20'),
('Sevinch', 'Xojiyeva', 'sevinch_x@gmail.com', 'Namangan', 'Namangan viloyati', 'active', '2024-06-18', '2025-08-25'),
('Oybek', 'Sodiqov', 'oybek.sodiqov@gmail.com', 'Qarshi', 'Qashqadaryo viloyati', 'active', '2023-11-11', '2025-11-17'),
('Zilola', 'Mamatova', 'zilola.m@gmail.com', 'Toshkent', 'Toshkent shahri', 'active', '2025-03-20', '2025-11-19'),
('Rustam', 'Nazarov', 'rustam_nazarov@gmail.com', 'Urganch', 'Xorazm viloyati', 'active', '2024-01-25', '2025-07-30'),
('Farhod', 'Qodirov', 'farhod.qodirov@gmail.com', 'Navoiy', 'Navoiy viloyati', 'active', '2024-09-05', '2025-11-18'),
('Laylo', 'To''xtayeva', 'laylo.t@gmail.com', 'Termiz', 'Surxondaryo viloyati', 'active', '2024-07-20', '2025-11-05'),
('Doston', 'Mirzayev', 'doston1995@gmail.com', 'Toshkent', 'Toshkent shahri', 'active', '2024-11-15', '2025-11-19'),
('Aziza', 'Usmonova', 'aziza.u@gmail.com', 'Jizzax', 'Jizzax viloyati', 'active', '2024-12-01', '2025-11-20'),
('Bekzod', 'Karimov', 'bekzod.karim@gmail.com', 'Samarqand', 'Samarqand viloyati', 'active', '2025-02-28', '2025-11-18');



SELECT first_name, last_name, email
FROM users
WHERE city = 'Toshkent';



SELECT *
FROM users
WHERE registered_at > '2024-03-31'
  AND strftime('%m', last_login) = '11';



SELECT region, COUNT(*) as user_count
FROM users
GROUP BY region
ORDER BY user_count DESC;



SELECT COUNT(*) as gmail_active_count
FROM users
WHERE email LIKE '%@gmail.com'
  AND status = 'active';



SELECT *
FROM users
ORDER BY registered_at DESC
LIMIT 5;



SELECT *
FROM users
WHERE registered_at < '2024-07-01';
