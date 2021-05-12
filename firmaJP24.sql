drop database if exists firmaJP24;
create database firmaJP24;
use firmaJP24;

create table projekt(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena decimal(18,2) null
);