CREATE DATABASE IF NOT EXISTS Product_details;

CREATE table Product_details.Customer_data(customer_id int PRIMARY KEY, customer_name varchar(50) 
NOT NULL , address varchar(50));

CREATE table Product_details.PRODUCT_DETAILs(CUSTOMER_id int PRIMARY KEY, CUSTOMEr_name varchar(60) NOT NULL,
customer_id int, FOREIGN KEY (customer_id) REFERENCES PRODUCT_DETAILS.customer_data(customer_id));
REFERENCES PRODUCT_DETAILS.CUSTOMER_DATA(CUSTOMER_ID)
