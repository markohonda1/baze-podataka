select * from smjer;

insert into osoba(ime,prezime,email) values
('Ivan','Ðurokoviæ','icaðuro@gmail.com'),('Marko','Aziniæ','azo@gmail.com');


insert into smjer(naziv,cijena,upisnina) values
('Java',80.3,15.3),('PHP',800,123);

insert into predavac(osoba)values
(1),(2);

select * from grupa;

insert into grupa(naziv,smjer,predavac) values
('Java br.2',1,2),('PHP br.5',2,2);

update grupa set naziv='jp21' where sifra=1;

update grupa set naziv='php21' where sifra=3;

delete from grupa where sifra=2;

select * from osoba where sifra=2;

select * from osoba where ime like 'i%';

select * from osoba where ime like 'm%';

select * from predavac where sifra !=1 or sifra=2;

select * from grupa where naziv like '%H%';

select * from osoba where oib=null;


