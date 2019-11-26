drop database if exists caffe_bar;
create database caffe_bar default character set utf8;
use caffe_bar;

# c:\xampp\mysql\bin\mysql.exe -uedunova -pedunova --default-character-set=utf8 < d:\caffe_bar.sql

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib varchar(30),
    email varchar(40) not null
);

create table racun(
    sifra int not null primary key auto_increment,
    zaposlenik int not null,
    datVrijeme datetime,
    brRacuna int 
);

create table pice(
    sifra int not null primary key auto_increment,
    količina decimal(18,3),
    vrsta varchar(20) not null,
    cijena decimal(18,3) not null,
    dobavljac int not null
);

create table dobavljac(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    adresa varchar(40) not null
);

alter table racun add foreign key(zaposlenik) references zaposlenik(sifra);
alter table racun add foreign key(pice) references pice(sifra);