use ExerciseDb
create table products
(PId int primary key identity(1000,1),
PName nvarchar(50) not null,
PPrice float,
PTax as PPrice*0.10 persisted,
PCompany nvarchar(50),
PQty int check (PQty<=1) default 1)

insert into products (PName,PPrice,PCompany) values ('mobile',30000,'Redmi')
insert into products (PName,PPrice,PCompany) values ('laptop',65000,'SamSung')
insert into products (PName,PPrice,PCompany) values ('mobile',33000,'realme')
insert into products (PName,PPrice,PCompany) values ('AC',80000,'HTC')
insert into products (PName,PPrice,PCompany) values ('Watch',20000,'Apple')

select * from products

