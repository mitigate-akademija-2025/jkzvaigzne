-- SQLite

create table if not exists users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE,
    age INTEGER
);

SELECT id, first_name, last_name FROM users;

INSERT INTO users (first_name, last_name, email, age)
            VALUES('Andrejs', 'Zvaigzne', 'andrejs@email.com', 30);

UPDATE users 
SET last_name = 'Star',
 first_name = 'Jacob'
WHERE id = 1;

DELETE FROM users WHERE id > 1;

SELECT * FROM users WHERE first_name = 'Andrejs' OR last_name = 'Star';

SELECT * FROM users 
WHERE email like '%email%';


CREATE TABLE adresses (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    street TEXT NOT NULL,
    city TEXT NOT NULL,
    postal_code TEXT
);

ALTER TABLE adresses add user_id INTEGER;

SELECT * FROM adresses

INSERT INTO adresses(street, city, postal_code, user_id)
VALUES ('Gustava Zemgala gatve 24', 'Riga', 'LV-2000', 2);

SELECT * FROM adresses

SELECT u.first_name, a.street  
    FROM users u 
    INNER JOIN adresses a ON a.user_id = u.id
WHERE u.id = 2;


SELECT * FROM adresses

SELECT MAX(age), first_name FROM users;

SELECT COUNT(*) FROM users;

SELECT SUM(age) FROM users;

