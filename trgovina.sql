drop database if exists trgovina;
create database trgovina default character set utf8;
use trgovina;

create table racun(
    sifra int not null primary key auto_increment,
    datum datetime not null,
    rednibroj int,
    operater int not null
);

create table stavka(
    racun int not null,
    proizvod int not null,
    kolicina decimal (18,3) not null
);

create table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal (18,3) not null
);

create table operater(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(60) not null
);

alter table racun add foreign key (operater) references operater (sifra);

alter table stavka add foreign key (racun) references racun(sifra);
alter table stavka add foreign key (proizvod) references proizvod(sifra);


insert into proizvod(naziv,cijena) values
('Knjiga',599.99),('Žvake',4.99),('Salama',7.99);

insert into stavka(racun,proizvod,kolicina) values
(1,1,3.13),(2,2,0.4),(3,3,1);

insert into operater(ime,prezime,email) values
('Josip','Ester','jokaester@gmail.com'),('Ivan','Ivanko','ivanko8@gmail.com'),('Tomislav','Baša','basko45@gmail.com');

update operater set ime='Marko' where sifra=1;
update operater set prezime='Ivanko' where sifra=3;

update proizvod set cijena=3.59 where sifra=2;

update stavka set racun=4 where sifra=1;

delete from operater where sifra=1;

delete from proizvod where sifra=2;
