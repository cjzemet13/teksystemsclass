-- create database called example_db 
-- employee table has emp id, name, age.
-- addess id, adress street, city, state, fk_emp_id, timestamp with a default value of time now
-- constraints fk in address table for employee table


create database example_db;
use example_db;

create table employee (
	emp_id int(4) primary key auto_increment,
	name varchar(255) not null default 'MISSING',
	age tinyint check(age >=0)
	);
	
describe employee;

insert into employee (`name`, `age`) values ('Keith', 25);
insert into employee (`name`, `age`) values ('jafar', 1);
insert into employee (`name`, `age`) values ('reema', 45);

select * from employee;

-- address table address id, address street, city, state, fk_emp_id, timestamp with a default value of time now

create table address (
		address_id int(11) primary key auto_increment,
		address_street varchar(255) not null default 'unknown',
		city varchar(255) not null default 'unknown',
		state varchar(2) not null default 'NA',
		timestamp TIMESTAMP not null default NOW(6),
		fk_emp_id int(4),
		constraint some_name foreign key(fk_emp_id) references employee(emp_id)
		);
	
	describe address;

insert into address (`address_street`, `city`, `state`, `fk_emp_id`) values ('123 street', 'plano', 'TX', 2);
select * from address 
		