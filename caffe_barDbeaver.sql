select * from zaposlenik;
select * from pice;
select * from dobavljac;
select * from racun;

insert into zaposlenik(ime,prezime,email)values
('Josip','Raguž','minja@gmail.com'),('Leon','Subotiæ','lexy@gmail.com'),('Luka','Obradoviæ','lux@gmail.com');

insert into dobavljac(naziv,adresa)values
('ROTO d.o.o.','Reisnerova 56,Osijek'),('LUX d.o.o.','Vukovarska 56,Požega'),('Pan d.o.o.','Zagrebaèka 56, Zagreb');

insert into pice(vrsta,cijena,dobavljac)values
('strana žesta',8,1),('domaæa žesta',6,2),('kava',6,1),('Pivo',12,3);


insert into racun(zaposlenik,datVrijeme)values
(1,'2019-02-03 19:35:20'),(2,'2019-02-03 15:45:30'),(3,'2019-04-03 09:45:21');

select b.dobavljac
from dobavljac a 
inner join pice b on a.sifra=b.dobavljac;
