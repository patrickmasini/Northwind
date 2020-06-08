
CREATE TABLE Order_Fact (
	order_id smallint NOT NULL,
	customer_id bpchar COLLATE pg_catalog."default",
	order_date date,
	employee_id smallint NOT NULL,
	product_id smallint NOT NULL,
	required_date date,
	shipped_date date,
	dateid integer NOT NULL,
	ship_via smallint NOT NULL,
	freight real NOT NULL,
	unit_price real NOT NULL,
	quantity smallint NOT NULL,
	discount real NOT NULL,
	units_in_stock smallint NOT NULL,
	units_on_order smallint NOT NULL,
	reorder_level smallint NOT NULL
);


CREATE TABLE Product_Dim (
	product_id smallint NOT NULL,
	product_name character varying(40) COLLATE pg_catalog."default" NOT NULL,
	category_id smallint NOT NULL,
	quantity_per_unit character varying(20) COLLATE pg_catalog."default" NOT NULL,
	PRIMARY KEY (product_id)
);


CREATE TABLE Employee_DIM (
	employee_id smallint NOT NULL,
	last_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
	first_name character varying(10) COLLATE pg_catalog."default" NOT NULL,
	region character varying(15) COLLATE pg_catalog."default" NOT NULL,
	city character varying(15) COLLATE pg_catalog."default" NOT NULL,
	country character varying(15) COLLATE pg_catalog."default" NOT NULL,
	PRIMARY KEY (employee_id)
);


CREATE TABLE Customer_DIM (
	customer_id bpchar COLLATE pg_catalog."default" NOT NULL,
	company_name character varying(40) COLLATE pg_catalog."default" NOT NULL,
	contact_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
	region character varying(15) COLLATE pg_catalog."default" NOT NULL,
	city character varying(15) COLLATE pg_catalog."default" NOT NULL,
	country character varying(15) COLLATE pg_catalog."default" NOT NULL,
	PRIMARY KEY (customer_id)
);


CREATE TABLE Time_Dim (
	dateid integer NOT NULL,
	year integer NOT NULL,
	month smallint NOT NULL,
	day smallint NOT NULL,
	week_day smallint NOT NULL,
	PRIMARY KEY (dateid)
);