-- Schema for order database
/*
 * salesman(**salesman_id**, name, city, commission) 
 * customer(**customer_id**, cust_name, city, grade) 
 * order(**ord_no**, puchase_amt, ord_date, customer_id, salesman_id)
 */
USE order_database;

CREATE TABLE salesman (
    salesman_id varchar(5),
    name varchar(30),
    city varchar(15),
    commission int,
    PRIMARY KEY(salesman_id)
);

CREATE TABLE customer (
    customer_id varchar(5),
    cust_name varchar(30),
    city varchar(15),
    grade int,
    PRIMARY KEY(customer_id)
);

CREATE TABLE orders (
    ord_no varchar(5),
    purchase_amt int,
    ord_date date,
    customer_id varchar(5),
    salesman_id varchar(5),
    PRIMARY KEY(ord_no),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(salesman_id) REFERENCES salesman(salesman_id) ON DELETE CASCADE
);