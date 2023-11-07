--Problem 1:
CREATE TABLE employees(
	id NUMBER(5) NOT NULL,
	name VARCHAR(99) NOT NULL,
	position VARCHAR(39) NOT NULL,
	department VARCHAR(39) NOT NULL,
	salary NUMBER(7,2) NOT NULL,

PRIMARY KEY (id)
);

CREATE TABLE sales(
	order_id NUMBER(7) NOT NULL,
	customer_id NUMBER(5) NOT NULL,
	product_id NUMBER(5) NOT NULL,
	quantity NUMBER(5) NOT NULL,
	sales_date DATE NOT NULL,

PRIMARY KEY(order_id),
FOREIGN KEY(order_id) REFERENCE orders(order_id),
FOREIGN KEY(customer_id) REFERENCE customers(customer_id),
FOREIGN KEY(product_id) REFERENCE customers(product_id)
);


CREATE TABLE customers(
	customer_id NUMBER(5) NOT NULL,
	customer_name VARCHAR(75),
	city VARCHAR(35) NOT NULL,

PRIMARY KEY(customer_id)
);

CREATE TABLE orders(
	order_id NUMBER(5) NOT NULL,
	order_date DATE NOT NULL,
	customer_id NUMBER(7) NOT NULL,
	total_amount NUMBER(3) NOT NULL,

PRIMARY KEY(order_id),
FOREIGN KEY(customer_id) REFERENCE customer(customer_id)
)

CREATE TABLE inventories(
	product_id NUMBER(5) NOT NULL,
	product_name VARCHAR(75) NOT NULL,
	quantity NUMBER(3) NOT NULL,
	price NUMBER(7,2) NOT NULL,

PRIMARY KEY(product_id)
);

INSERT INTO employees(id,name,position,department,salary) VALUES
  (64345,"Uriel Dunlap","Dui Nec Tempus Corporation","Ut Associates",9900),
  (81258,"Declan Sampson","Magna Nam Ligula LLC","Eu Lacus PC",40000),
  (54646,"Denton Cohen","Mauris Magna Inc.","Ut Quam Limited",11600),
  (19187,"Kristen Mcleod","Eros Nam Consulting","Etiam Industries",76500),
  (22271,"Iola Wise","Ante Ipsum Institute","Sed Malesuada Incorporated",5400);

INSERT INTO sales (order_id,customer_id,product_id,quantity,date) VALUES
  (7624613,58658,57597,97,"16/03/2024"),
  (5947454,67994,88885,98,"20/01/2023"),
  (9741962,19389,64578,30,"23/01/2023"),
  (1470102,33631,40425,53,"26/08/2024"),
  (4626693,33766,99303,45,"10/09/2023");

INSERT INTO customers (customer_id,customer_name,city) VALUES
  (58658,"Yoko Sampson","Sungei Kadut"),
  (67994,"Lunea Hoffman","Sao Jose"),
  (19389,"Julian Kelly","Ceuta"),
  (33631,"Bruce Alvarez","Paya Lebar"),
  (33766,"Wilma Hood","Izmir");

INSERT INTO orders (order_id,order_date,customer_id,total_amount) VALUES
  (8014238,"30/04/2023",97300,54001),
  (7219335,"12/08/2024",26638,92915),
  (5496772,"16/05/2024",83885,41585),
  (9794697,"04/02/2023",43478,88443),
  (2992539,"18/10/2024",49847,97061);

INSERT INTO inventories (product_id,product_name,quantity,price) VALUES
  (9194856,"Elementum",400,49.60),
  (3184480,"Aliquam",800,58.00),
  (4978704,"Vestibulum",819,28.40),
  (4429443,"Tellus",512,43.90),
  (8904104,"Lorem Luctus",729,21.10);