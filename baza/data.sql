set client_encoding to 'utf8';

INSERT INTO customer VALUES
(1,'Bob','Newton',1111111111,null,1,1),
(2,'Emma','Knight',2222222222,null,2,2),
(3,'Eva','Watson',3333333333,null,3,3),
(4,'Hope','Holmes',1234567890,null,4,4),
(5,'Peter','Alkin',1987654320,null,5,5),
(6,'Bill','Johnson',9283910294,null,6,6),
(7,'Alice','Eliot',9403928394,50040110105,7,7),
(8,'Ann','Schwimmer',1029384958,null,8,8),
(9,'Ellen','Price',null,80030519011,9,9),
(10,'Mary','kent',null,77040912300,10, 10),
(11, 'Alan', 'Teraki', 1123456711, null, 11, 11),
(12, 'Emma', 'Grammy', 1412345612, null, 12, 11),
(13, 'Greg', 'Inisowić', 1514517817, null, 13, 11),
(14, 'Victoria', 'Neopoli', 1000000000, null, 14, 14);

INSERT INTO address VALUES
(1,'Krakowska','54/102','','Szczecin'),
(2,'Granastojowa','14','', 'Gdańsk'),
(3,'Kwiatowa','99','','Kraków'),
(4,'Olejowa','104/5','','Warszawa'),
(5,'Kolejowa','15','','Wrocław'),
(6,'Turkusowa','70','','Kielce'),
(7,'Niezapominajek','18','','Poznań'),
(8,'Pocztowa','190/14','','Lublin'),
(9,'Stefana Igatowskiego','10','','Kraków'),
(10,'Agrestowa','98','','Lublin'),
(11, 'Aleksandry Kosmykowskiej', '511/41', '98-977', 'Kraków'),
(12, 'Słonecznikowa', '111/99', '', 'Warszawa'),
(13, 'Kwiatowa', '170/48', '', 'Wrocław'),
(14,'Ireneusza Milowskiego','11/1','','Warszawa');

INSERT INTO product_category VALUES
(1,'licencja_rok'),
(2,'licencja_3'),
(3,'licencja_5'),
(4,'hardware');

INSERT INTO offer VALUES
(1,1,1,100000.0000,95000.0000,'2020-01-01','2020-01-31'),
(2,2,1,200000.0000,180000.0000,'2020-01-01','2020-02-01'),
(3,3,1,150000.0000,140000.0000,'2020-01-01','2020-03-01'),
(4,4,10,800.0000,750.0000,'2017-03-01','2017-03-31'),
(5,5,5,700.0000,700.0000,'2020-03-01','2020-03-31'),
(6,7,5,900.0000,850.0000,'2020-03-01','2020-03-28'),
(7,7,100,900.0000,800.0000,'2020-01-01','2020-03-31'),
(8,8,1,1000.0000,1000.0000,'2020-01-01','2020-01-31'),
(9,8,200,1000.0000,900.0000,'2020-04-01','2020-04-10'),
(10,9,300,1300.0000,1050.0000,'2020-04-01','2020-04-10'),
(11,10,1,170000.0000,140000.0000,'2020-04-01','2020-04-10'),
(12,4,100,800.0000,700.0000,'2020-04-01','2020-04-10'),
(13,1,1,100000.0000,90000.0000,'2020-05-05','2020-05-10'),
(14,5,1000,700.0000,525.0000, '2020-07-01','2020-07-05'),
(15,4,100,800.000,800.000,'2020-05-04','2020-05-17');

INSERT INTO offer_customer VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 4),
(6, 6, 4),
(7, 7, 5),
(8, 8, 6),
(9, 9, 7),
(10, 10, 7),
(11, 11, 7),
(12, 12, 7),
(13, 13, 8),
(14, 1, 7),
(15, 14, 11),
(16, 10, 11),
(17, 5, 1),
(18, 9, 1),
(19, 14, 13),
(20, 15, 14),
(21, 4, 1),
(22, 5, 10),
(23, 11, 1);

INSERT INTO product VALUES
(1,1,'System TETRA',''),
(2,1,'System Project 25',''),
(3,1,'System MOTOTRBO',''),
(4,4,'Kamera osobista AV540',''),
(5,4,'Kamera osobista AV550',''),
(6,4,'Kamera osobista XY477',''),
(7,4,'Kamera osobista XY14J',''),
(8,4,'Radiotelefon OY15A',''),
(9,4,'Radiotelefon OY14X',''),
(10,2,'System TETRA',''),
(11,3,'System Project 25','');

INSERT INTO sale VALUES
(1,1,'2020-01-31'),
(2,2,'2020-01-31'),
(3,3,'2020-01-15'),
(4,4,'2017-03-17'),
(5,5,'2020-03-17'),
(6,6,'2020-03-17'),
(7,7,'2020-03-01'),
(8,8,'2020-01-17'),
(9,9,'2020-04-07'),
(10,10,'2020-04-07'),
(11,11,'2020-04-07'),
(12, 14, '2020-01-04'),
(13, 15, '2020-07-17'),
(14, 16, '2020-04-10'),
(15, 17, '2020-03-01'),
(16, 18, '2020-04-01'),
(17, 19, '2020-05-04'),
(18, 20, '2020-05-07'),
(19, 23, '2020-05-07');
