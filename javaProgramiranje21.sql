drop database if exists javaProgramiranje21;
create database javaProgramiranje21 default character set utf8;
use javaProgramiranje21;


# c:\xampp\mysql\bin\mysql.exe -uedunova -pedunova --default-character-set=utf8 < d:\javaProgramiranj21.sql

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(60) not null,
    smjer varchar(40) not null,
    predavac varchar(40) not null,
    brojPolaznika int ,
    datumPocetka datetime
    );

    create table predavac(
        sifra int not null primary key auto_increment,
        osoba int not null,
        iban varchar(40)
    );

    create table smjer(
        sifra int not null primary key auto_increment,
        naziv varchar(60) not null,
        trajanje int,
        cijena decimal(18,3) not null,
        upisnina decimal(18,3) not null,
        verificiran boolean default true
    );

    create table osoba(
        sifra int not null primary key auto_increment,
        ime varchar(50) not null,
        prezime varchar(50) not null,
        oib varchar(40) not null,
        email varchar(60) not null
    );

    create table polaznik(
        sifra int not null primary key auto_increment,
        osoba int not null,
        brojUgovora int
    );

    create table clan(
        grupa int not null,
        polaznik int not null
    );

    alter table grupa add foreign key(smjer) references smjer(sifra);
    alter table grupa add foreign key(predavac) references predavac(sifra);
    
    alter table predavac add foreign key(osoba) references osoba(sifra);

    alter table polaznik add foreign key(osoba) references osoba(sifra);

    alter table clan add foreign key(grupa) references grupa(sifra);
    alter table clan add foreign key(polaznik) references polaznik(sifra);