drop database if exists firmaJP24;
create database firmaJP24;
use firmaJP24;

create table projekt(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
cijena decimal(18,2) null
);

create table programer(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
datumrodenja datetime,
placa decimal (18,2)
);

create table sudjeluje(
projekt int not null,
programer int not null,
datumpocetka datetime,
datumkraja datetime,
);

alter table sudjeluje add foreign key (programer) references programer(sifra);
alter table sudjeluje add foreign key (projekt) references projekt(sifra);

insert into projekt(naziv,cijena) 
values ('vježba',3999.99)

insert into programer(sifra,ime,prezime,datumrodenja,placa)
values(null,'Petar','Jagrić','2001-10-02',6500.00)