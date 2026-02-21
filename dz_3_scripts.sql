/*1. Напишіть SQL команду, за допомогою якої можна:
вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
вибрати тільки стовпчики name, phone з таблиці shippers,
та перевірте правильність її виконання в MySQL Workbench.*/

-- всі стовпчики
SELECT
*
FROM mydb.products

-- тільки стовпчики name, phone
SELECT
name,
phone
FROM mydb.shippers


/*2. Напишіть SQL команду, за допомогою якої можна знайти середнє, 
максимальне та мінімальне значення стовпчика price таблички products, 
та перевірте правильність її виконання в MySQL Workbench*.**/

SELECT
avg(price) as avg_price,
min(price) as min_price,
max(price) as max_price
FROM mydb.products


/*3. Напишіть SQL команду, за допомогою якої можна обрати унікальні значення 
колонок category_id та price таблиці products.
Оберіть порядок виведення на екран за спаданням значення price 
та виберіть тільки 10 рядків. Перевірте правильність виконання команди в MySQL Workbench.*/

SELECT
distinct category_id,
price
FROM mydb.products
order by price desc
limit 10


/*4. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків), 
які знаходиться в цінових межах від 20 до 100, та перевірте правильність її виконання в MySQL Workbench.*/

SELECT
count(id) as prod_count
FROM mydb.products
where price >= 20 and price <= 100


/*5. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків) 
та середню ціну (price) у кожного постачальника (supplier_id), та перевірте 
правильність її виконання в MySQL Workbench.*/

supplier_id,
count(id) as prod_cnt,
avg(price) as avg_price
FROM mydb.products
group by 1