select * from zaposlenik;
select * from pi�e;
select * from dobavlja�;
select * from racun;

insert into zaposlenik(ime,prezime,email)values
('Josip','Ragu�','minja@gmail.com'),('Leon','Suboti�','lexy@gmail.com'),('Luka','Obradovi�','lux@gmail.com');

insert into pi�e(vrsta,cijena)values
('strana �esta',8),('doma�a �esta',6),('kava',6);

insert into dobavlja�(naziv,adresa)values
('ROTO d.o.o.','Reisnerova 56,Osijek'),('LUX d.o.o.','Vukovarska 56,Po�ega'),('Pan d.o.o.','Zagreba�ka 56, Zagreb');

insert into racun(zaposlenik,pi�e)values
(1,1),(2,3),(3,2);

