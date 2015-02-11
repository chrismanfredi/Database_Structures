/* Question 2 */

insert into users (userId, firstname, middlename, lastname, dob, gender)
values ('cmanfredi11', 'Chris', 'Sean', 'Manfredi', '11/04/1994', 'M');

/* Question 3 */

insert into orders (userid,orderDate)
values('11','2011-04-15 00:00:00');

insert into orderitem(orderId,itemid,quantity)
values(21279,30,1);

insert into orderItem(orderid,itemid,quantity)
values(21279,20,100);

insert into orders(userid,orderdate)
values('11','2011-04-15 00:00:00');

insert into orderitem (orderid,itemid,quantity)
values(21280,29,2);

insert into orderItem (orderid,itemid,quantity)
values(21280,28,2);

/* Question 4 */

insert into userdvd (userid,dvdId)
Values(11,'18443');

insert into userdvd (userid,dvdId)
Values(11,'18444');

/* Question 5 */

insert into uservehicle (userid,vehicleid)
Values(11,'18844');

insert into uservehicle (userid,vehicleid)
Values(11,'18845');

/* Question 6 */

SELECT users.userid,firstname,lastname
FROM users
JOIN orders
ON orders.orderid = users.userid;


/* Question 7 */

SELECT * 
FROM users
JOIN orders
LIMIT 200;

/* Question 8 */

SELECT users.userid,firstname,lastname,orderid
FROM users
JOIN orders
ON users.userid = orders.userid
WHERE orderid is NULL
LIMIT 200;

/* Question 9 */

SELECT orders.orderid,orderDate,users.userid,firstname,lastname,itemname,quantity
FROM users
JOIN orders
ON users.userid = orders.userid
JOIN orderitem 
ON orders.orderid - orderitem.orderid
JOIN item 
ON orderitem.itemid = item.itemid
LIMIT 200;

/* Question 10 */

ALTER TABLE orders
ADD destinationState
VARCHAR(2);

/* Question 11 */

ALTER TABLE orders
ADD CONSTRAINT FK_orders
FOREIGN KEY (destinationState)
REFERENCES state(state);

/* Question 12 */

SELECT concat(firstname,'',lastname) as fullname
FROM users
WHERE lastname = 'Steady';

/* Question 13 */

ALTER TABLE users
ADD index (lastname);

/* Question 14 */

SELECT concat(firstname,'',lastname) as fullname
FROM users
WHERE lastname = 'Steady';

/* Question 15 */

SELECT count(lastname) as count from users
WHERE lastname like '%ing';

/* Question 16 */

SELECT count(occupationid) as count from users
WHERE firstname like 'J%' and occupationid is not NULL;