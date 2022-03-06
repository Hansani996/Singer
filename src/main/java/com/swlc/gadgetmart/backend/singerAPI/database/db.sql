drop DATABASE Singer;

CREATE DATABASE Singer;

USE Singer;

CREATE TABLE category(
                         categoryId int(10) NOT NULL AUTO_INCREMENT,
                         categoryName varchar(225) NOT NULL,
                         CONSTRAINT PRIMARY KEY(categoryId)
) ENGINE=INNODB;

CREATE TABLE brand(
                      brandId int(10) NOT NULL AUTO_INCREMENT,
                      brandName varchar(225) NOT NULL,
                      CONSTRAINT PRIMARY KEY(brandId)
) ENGINE=INNODB;

CREATE TABLE item(
                     itemId int(10) NOT NULL AUTO_INCREMENT,
                     name VARCHAR (225) NOT NULL,
                     description VARCHAR (225) NOT NULL,
                     image VARCHAR (225) NOT NULL,
                     price DOUBLE NOT NULL,
                     deliveryCost DOUBLE NOT NULL,
                     brand int(10) NOT NULL,
                     category int(10) NOT NULL,
                     discount int(10) NOT NULL,
                     shop VARCHAR (225) NOT NULL,
                     warranty VARCHAR (225) NOT NULL,
                     soldOut BOOL NOT NULL,
                     CONSTRAINT PRIMARY KEY(itemId),
                     CONSTRAINT FOREIGN KEY(brand) REFERENCES brand(brandId) on update cascade on delete cascade,
                     CONSTRAINT FOREIGN KEY(category) REFERENCES category(categoryId) on update cascade on delete cascade
) ENGINE=INNODB;


insert into category (categoryId, category_name) values (1,'TV & Audio');
insert into category (categoryId, category_name) values (2,'Computers & Mobile');
insert into category (categoryId, category_name) values (3,'Kitchen Appliances');
insert into category (categoryId, category_name) values (4,'Home Appliances');
insert into category (categoryId, category_name) values (5,'small Applicant');
insert into category (categoryId, category_name) values (6,'Refrigerator, Air Conditioner, Washing Machines');

insert into brand (brandId) VALUES ('Huawei');
insert into brand (brandId) VALUES ('Apple');
insert into brand (brandId) VALUES ('Samsung');
insert into brand (brandId) VALUES ('Dell');
insert into brand (brandId) VALUES ('Asus');
insert into brand (brandId) VALUES ('Hafele');
insert into brand (brandId) VALUES ('Sisil');
insert into brand (brandId) VALUES ('Kenwood');
insert into brand (brandId) VALUES ('Indesit');
insert into brand (brandId) VALUES ('Regnis');
insert into brand (brandId) VALUES ('Panasonic');
insert into brand (brandId) VALUES ('Thermos');
insert into brand (brandId) VALUES ('Welling');
insert into brand (brandId) VALUES ('Insinkerator');


insert into item (name, description, image, price, deliveryCost, brand, category, discount, shop, warranty, soldOut) VALUES
    ('Samsung Galaxy S22 (8GB+128GB) (Black)','SMG-SM-S22-B','https://www.singersl.com/sites/default/files/styles/product_thumb/public/images/products/2022-03/SMG-SM-S22-B-01.jpg?itok=UJrL3m2q',229,999,0,2,1,5,'Singer','12 Months',0);

insert into item (name, description, image, price, deliveryCost, brand, category, discount, shop, warranty, soldOut) VALUES
    ('
TCL 20 Pro 5G (6GB+256GB) (Marine Blue)','HU-Y7A-G','https://www.singersl.com/sites/default/files/styles/product_thumb/public/images/products/2021-10/TCL_TCL20PRO-6-256-MABLU-02.jpg?itok=fX1rdoOz',35999,0,1,1,0,'Singer','12 Months',0);
                                                                                                                       ('USHA Ceiling Fan Aviator 70W','USHA-AVTR56','https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2020-11/USH_USHA-AVTR56-01_zoom.jpg?itok=1NdyPqgt',9290,0,7,2,0,'Softlogic','12 Months',0);

