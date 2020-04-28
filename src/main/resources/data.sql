/*
create table CUSTOMER
(
   customer_id integer not null,
   customer_name varchar(255) not null,
   primary key(customer_id)
);

create table TRANSACTION
(
   purchase_transaction_id integer not null,
   purchase_amount double,
   purchase_date date,
   customer_id integer,
   primary key(purchase_transaction_id),
   foreign key(customer_id) references CUSTOMER (customer_id)
);

Taking 5 customers as example
*/

insert into CUSTOMER (customer_id, customer_name) values ( 1001 , 'Bill');
insert into CUSTOMER (customer_id, customer_name) values ( 1002 , 'Joe');
insert into CUSTOMER (customer_id, customer_name) values ( 1003 , 'Jeff');
insert into CUSTOMER (customer_id, customer_name) values ( 1004 , 'William');
insert into CUSTOMER (customer_id, customer_name) values ( 1005 , 'John');

insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (0,  1250.73, '2020-04-28', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (1,  195.12,  '2020-04-11', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (2,  1102.35, '2020-04-20', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (3,  112.35, '2020-03-29', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (4,  150.00, '2020-04-08', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (5,  195.12, '2020-02-05', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (6,  142.35, '2020-03-27', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (7,  1150.00, '2020-03-07', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (8,  195.12, '2020-03-15', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (9,  1242.35, '2020-03-25', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (10, 340.73, '2020-02-02', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (11, 366.12, '2020-04-14', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (12, 3126.35, '2020-01-24', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (13, 332.35, '2020-01-27', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (14, 370.00, '2020-02-04', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (15, 319.12, '2020-04-13', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (16, 3142.35, '2020-02-23', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (17, 315.00, '2020-03-17', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (18, 395.12, '2020-03-25', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (19, 343.73, '2020-01-06', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (20, 34.12, '2020-01-14', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (21, 52.35, '2020-03-27', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (22, 20.00, '2020-02-07', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (23, 85.12, '2020-02-28', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (24, 15.00, '2020-02-10', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (25, 175.12, '2020-03-25', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (26, 1250.73, '2020-01-01', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (27, 195.12, '2020-04-11', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (28, 1102.35, '2020-01-20', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (29, 112.35, '2020-01-29', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (30, 150.00, '2020-02-08', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (31, 1195.12, '2020-02-15', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (32, 142.35, '2020-02-27', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (33, 11150.00, '2020-03-07', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (34, 1195.12, '2020-03-15', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (35, 11242.35, '2020-03-25', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (36, 1140.73, '2020-01-02', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (37, 1166.12, '2020-02-14', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (38, 11126.35, '2020-01-24', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (39, 1132.35, '2020-01-27', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (40, 170.00, '2020-02-04', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (41, 119.12, '2020-02-13', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (42, 1142.35, '2020-02-23', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (43, 115.00, '2020-03-17', 1005);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (44, 195.12, '2020-03-25', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (45, 743.73, '2020-01-06', 1003);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (46, 734.12, '2020-02-14', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (47, 752.35, '2020-04-27', 1004);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (48, 720.00, '2020-01-07', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (49, 785.12, '2020-02-28', 1001);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (50, 715.00, '2020-05-10', 1002);
insert into TRANSACTION (purchase_transaction_id, purchase_amount, purchase_date, customer_customer_id) values (51, 775.12, '2020-04-25', 1002);