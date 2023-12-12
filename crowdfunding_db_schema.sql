Drop table if exists contacts
Drop table if exists campaign
Drop table if exists category
Drop table if exists subcategory

Create table category
(
category_id varchar(5), 
category varchar(20) not null, 
primary key(category_id)
)

Create table subcategory
(
subcategory_id varchar(8), 
subcategory varchar(30) not null, 
primary key(subcategory_id)
)

Create table campaign
(
cf_id int, 
contact_id int not null unique,
company_name varchar (100) not null,
description varchar (100) not null,
goal float not null,
pledged float not null,
outcome varchar (12) not null,
backers_count int not null,
country varchar (3) not null,
currency varchar (3) not null,	
launched_date date not null,
end_date date not null,
category_id varchar(5) not null,
subcategory_id varchar(8) not null,
primary key(cf_id),
constraint fk_campaign_category
foreign key(category_id)
references category(category_id),
constraint fk_campaign_subcategory
foreign key(subcategory_id)
references subcategory(subcategory_id)
)

Create table contacts
(
contact_id int, 
first_name varchar (30) not null,
last_name varchar (30) not null,
email varchar (100) not null,
primary key(contact_id),
constraint fk_campaign_contact
foreign key(contact_id)
references campaign(contact_id)
)
Select * from campaign
Select * from contacts
Select * from category
Select * from subcategory