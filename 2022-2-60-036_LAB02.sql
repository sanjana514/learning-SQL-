DROP TABLE account cascade constraints;
DROP TABLE customer cascade constraints;
DROP TABLE depositor cascade constraints;
CREATE TABLE account(
account_no CHAR(5),
balance NUMBER,
CONSTRAINT account_no_pk PRIMARY KEY(account_no),
CONSTRAINT balance CHECK(balance>0 AND NOT balance=NULL)
);
CREATE TABLE customer(
customer_no CHAR(5),
customer_name VARCHAR2(20),
customer_city VARCHAR2(20),
CONSTRAINT customer_no_pk PRIMARY KEY(customer_no),
CONSTRAINT customer_name CHECK(NOT customer_name = NULL)
);
CREATE TABLE depositor(
account_no CHAR(5),
customer_no CHAR(5),
CONSTRAINT depositor_pk PRIMARY KEY(account_no,customer_no)
);
desc account;
desc customer;
desc depositor;
ALTER TABLE customer ADD date_of_birth DATE;
desc customer;
ALTER TABLE customer DROP column date_of_birth;
DESC CUSTOMER;
ALTER TABLE DEPOSITOR RENAME COLUMN ACCOUNT_NO TO a_no;
ALTER TABLE DEPOSITOR RENAME COLUMN customer_NO TO c_no;
desc depositor;
ALTER TABLE DEPOSITOR ADD CONSTRAINT depositor_fk1 FOREIGN KEY(a_no) REFERENCES ACCOUNT(account_no);
ALTER TABLE DEPOSITOR ADD CONSTRAINT depositor_fk2 FOREIGN KEY(c_no) REFERENCES customer(customer_no);
desc depositor;
INSERT INTO account VALUES ( 'A-101',12000);
INSERT INTO account VALUES ( 'A-102',6000);
INSERT INTO account VALUES ( 'A-103',2500);

INSERT INTO customer VALUES ( 'C-101','Alice','Dhaka');
INSERT INTO customer VALUES ( 'C-102','Annie','Dhaka');
INSERT INTO customer VALUES ( 'C-103','Bob','Chittagong');
INSERT INTO customer VALUES ( 'C-104','Charlie','Khulna');

INSERT INTO depositor VALUES ('A-101','C-101');
INSERT INTO depositor VALUES ('A-103','C-102');
INSERT INTO depositor VALUES ('A-103','C-104');
INSERT INTO depositor VALUES ('A-102','C-103');
select * from depositor;
select * from account;
select * from customer;
select customer_name,customer_city
from customer;
SELECT DISTINCT customer_city
FROM customer;
SELECT account_no, balance
FROM account
WHERE balance > 7000;
SELECT customer_no, customer_name
FROM customer
WHERE customer_city = 'Khulna';
SELECT customer_no, customer_name
FROM customer
WHERE not customer_city = 'Dhaka';
SELECT customer.customer_name, customer.customer_city
FROM customer JOIN depositor ON customer.customer_no = depositor.c_no
JOIN account ON account.account_no = depositor.a_no
WHERE account.balance > 7000;

SELECT customer.customer_name, customer.customer_city
FROM customer JOIN depositor ON customer.customer_no = depositor.c_no 
JOIN account ON account.account_no = depositor.a_no
WHERE account.balance > 7000 and  not (customer_city = 'Khulna');

SELECT account.account_no, account.balance
FROM customer JOIN depositor ON customer.customer_no = depositor.c_no 
JOIN account ON account.account_no = depositor.a_no
WHERE customer_no = 'C-102';

SELECT account.account_no, account.balance
FROM depositor JOIN account ON account.account_no = depositor.a_no
WHERE c_no = 'C-102';

SELECT account.account_no, account.balance
FROM customer JOIN depositor ON customer.customer_no = depositor.c_no 
JOIN account ON account.account_no = depositor.a_no
WHERE customer.customer_city  = ('Dhaka') or customer.customer_city = ('Khulna') ;

SELECT customer_no, customer_name
FROM customer JOIN depositor ON customer.customer_no = depositor.c_no
WHERE depositor.a_no = NULL;
