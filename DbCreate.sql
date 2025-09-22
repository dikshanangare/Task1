create Database ECommerceDB;

CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,    
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT
);


CREATE TABLE Category (
    category_id SERIAL PRIMARY KEY, 
    category_name VARCHAR(50) NOT NULL
);


CREATE TABLE Product (
    product_id SERIAL PRIMARY KEY, 
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT,
    category_id INT REFERENCES Category(category_id)    
);


CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY, 
    order_date DATE DEFAULT CURRENT_DATE,
    customer_id INT REFERENCES Customer(customer_id) 
);


CREATE TABLE Order_Details (
    order_detail_id SERIAL PRIMARY KEY,  
    quantity INT NOT NULL,
    order_id INT REFERENCES Orders(order_id),  
    product_id INT REFERENCES Product(product_id)   
);

select * from customer;
select * from category;
select * from product;
select * from orders;
select * from order_details;