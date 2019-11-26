select * from zaposlenik;
select * from pice;
select * from dobavljac;
select * from racun;

insert into zaposlenik(ime,prezime,email)values
('Josip','Ragu�','minja@gmail.com'),('Leon','Suboti�','lexy@gmail.com'),('Luka','Obradovi�','lux@gmail.com');

insert into dobavljac(naziv,adresa)values
('ROTO d.o.o.','Reisnerova 56,Osijek'),('LUX d.o.o.','Vukovarska 56,Po�ega'),('Pan d.o.o.','Zagreba�ka 56, Zagreb');

insert into pice(vrsta,cijena,dobavljac)values
('strana �esta',8,1),('doma�a �esta',6,2),('kava',6,1),('Pivo',12,3);


insert into racun(zaposlenik,datVrijeme)values
(1,'2019-02-03 19:35:20'),(2,'2019-02-03 15:45:30'),(3,'2019-04-03 09:45:21');

select b.dobavljac
from dobavljac a 
inner join pice b on a.sifra=b.dobavljac;
