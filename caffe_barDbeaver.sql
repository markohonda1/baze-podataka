select * from zaposlenik;
select * from piæe;
select * from dobavljaè;
select * from racun;

insert into zaposlenik(ime,prezime,email)values
('Josip','Raguž','minja@gmail.com'),('Leon','Subotiæ','lexy@gmail.com'),('Luka','Obradoviæ','lux@gmail.com');

insert into piæe(vrsta,cijena)values
('strana žesta',8),('domaæa žesta',6),('kava',6);

insert into dobavljaè(naziv,adresa)values
('ROTO d.o.o.','Reisnerova 56,Osijek'),('LUX d.o.o.','Vukovarska 56,Požega'),('Pan d.o.o.','Zagrebaèka 56, Zagreb');

insert into racun(zaposlenik,piæe)values
(1,1),(2,3),(3,2);

