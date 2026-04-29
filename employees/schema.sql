create table employee(
    id int primary key,
    name varchar(100) NOT NULL,
    city varchar(50) check (city="Kolkata") DEFAULT "Kolkata",
    age int check (age>=18) default 20,
    email varchar(50) UNIQUE,
    salary int DEFAULT 20000
);

drop table employee;









drop table employee;