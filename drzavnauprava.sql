drop database if exists drzavnauprava;
create database drzavnauprava default character set utf8;
use drzavnauprava;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan varchar(30)
    );

    create table opcina(
        sifra int not null primary key auto_increment,
        zupanija int not null,
        naziv varchar(30) not null,
        nacelnik varchar(30)
    );

    create table mjesto(
        sifra int not null primary key auto_increment,
        naziv varchar(30) not null,
        opcina int not null,
        brojstanovnika int
    );


    alter table opcina add foreign key(zupanija) references zupanija(sifra);
    
    alter table mjesto add foreign key(opcina) references opcina(sifra);

    insert into zupanija(naziv,zupan) values
    ('Osječko-baranjska','Ivan Anušić'),('Požeško-slavonska','Alojz Tomašević');

    insert into opcina(zupanija,naziv,nacelnik) values
    (1,'Čepin','Dražen Tonkovac'),(2,'Jakšić','Ivica Kovačević');

    insert into mjesto(naziv, opcina) values
    ('Radnovac',2),('Čepinski Martinci',1);

    update zupanija set zupan='Ivan Tomašević' where sifra=2;

    update mjesto set naziv='Eminovci' where sifra=1;

    delete mjesto where sifra=1;