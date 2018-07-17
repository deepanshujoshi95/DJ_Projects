CREATE TABLE CUSTOMER
(
customer_id VARCHAR2(15) PRIMARY KEY,
customer_name VARCHAR2(40) NOT NULL,
customer_address VARCHAR2(60) NOT NULL,
customer_age NUMBER(3),
customer_phone NUMBER(10),
customer_password VARCHAR2(20) NOT NULL
);



CREATE TABLE ACCOUNT
(
account_number VARCHAR2(20) PRIMARY KEY,
customer_id VARCHAR2(15) REFERENCES CUSTOMER(customer_id),
account_balance FLOAT,
account_type VARCHAR2(10)
);


CREATE TABLE TRANSACTION
(
transaction_id VARCHAR(20) PRIMARY KEY,
transaction_type VARCHAR2(10) NOT NULL,
transaction_date VARCHAR2(25) NOT NULL,
sender_account_number VARCHAR2(20) REFERENCES ACCOUNT(account_number),
receiver_account_number VARCHAR2(20) REFERENCES ACCOUNT(account_number),
transaction_status VARCHAR2(10),
transaction_amount FLOAT
);	

