CREATE TABLE SALESMAN 
(
salesman_id INT PRIMARY KEY IDENTITY(1,1),
name VARCHAR(50),
city VARCHAR(50),
commission BIT
);
GO 


CREATE TABLE CUSTOMER 
(
customer_id INT PRIMARY KEY IDENTITY(1,1),
cust_name VARCHAR(50),
city VARCHAR(50),
grade CHAR(15),
salesman_id int,
FOREIGN KEY (salesman_id) REFERENCES SALESMAN (salesman_id) 
);
GO 

CREATE TABLE ORDERS
( 
ord_no INT PRIMARY KEY IDENTITY(1,1),
purch_amt INT,
ord_date DATE,
customer_id INT ,
FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id) ,
salesman_id INT,FOREIGN KEY (salesman_id) REFERENCES SALESMAN (salesman_id) 
);
GO

SET IDENTITY_INSERT SALESMAN ON
GO
SET IDENTITY_INSERT SALESMAN Off

ALTER TABLE SALESMAN
ALTER COLUMN commission VARCHAR(150); 

alter table customer 
alter column grade varchar(30);

--insert into salesman

insert into salesman (salesman_id, name, city, commission) values (1, 'Kiele', 'Timashëvsk', 0.14);
insert into salesman (salesman_id, name, city, commission) values (2, 'Lambert', 'Ternopil’', 0.36);
insert into salesman (salesman_id, name, city, commission) values (3, 'Valenka', 'Santa Catalina', 0.89);
insert into salesman (salesman_id, name, city, commission) values (4, 'Horace', 'Huayang', 0.13);
insert into salesman (salesman_id, name, city, commission) values (5, 'Ahmad', 'La Curva', 0.74);
insert into salesman (salesman_id, name, city, commission) values (6, 'Melony', 'Huangli', 0.94);
insert into salesman (salesman_id, name, city, commission) values (7, 'Gwyneth', 'Knoxville', 0.01);
insert into salesman (salesman_id, name, city, commission) values (8, 'Auria', 'Phetchabun', 0.7);
insert into salesman (salesman_id, name, city, commission) values (9, 'Franni', 'Houping', 0.39);
insert into salesman (salesman_id, name, city, commission) values (10, 'Hamil', 'Ferrol', 0.02);
insert into salesman (salesman_id, name, city, commission) values (11, 'Carola', 'Tombu', 0.46);
insert into salesman (salesman_id, name, city, commission) values (12, 'Dorette', 'Rožna Dolina', 0.39);
insert into salesman (salesman_id, name, city, commission) values (13, 'Harp', 'Tanakawu Dua', 0.99);
insert into salesman (salesman_id, name, city, commission) values (14, 'Zachariah', 'Halayhay', 0.56);
insert into salesman (salesman_id, name, city, commission) values (15, 'Concettina', 'Xuling', 0.09);
insert into salesman (salesman_id, name, city, commission) values (16, 'Penni', 'Sann', 0.26);
insert into salesman (salesman_id, name, city, commission) values (17, 'Averill', 'Frydrychowice', 0.37);
insert into salesman (salesman_id, name, city, commission) values (18, 'Tobias', 'Pancol', 0.9);
insert into salesman (salesman_id, name, city, commission) values (19, 'Cairistiona', 'Örnsköldsvik', 0.58);
insert into salesman (salesman_id, name, city, commission) values (20, 'Isa', 'Tovarkovskiy', 0.09);
insert into salesman (salesman_id, name, city, commission) values (21, 'Farlee', 'Montalegre', 0.45);
insert into salesman (salesman_id, name, city, commission) values (22, 'Melva', 'Kosong', 0.35);
insert into salesman (salesman_id, name, city, commission) values (23, 'Wallis', 'Shuya', 0.57);
insert into salesman (salesman_id, name, city, commission) values (24, 'Astrid', 'Yonghe', 0.4);
insert into salesman (salesman_id, name, city, commission) values (25, 'Buiron', 'Nanping', 0.64);
insert into salesman (salesman_id, name, city, commission) values (26, 'Jolene', 'Sukamulia', 0.62);
insert into salesman (salesman_id, name, city, commission) values (27, 'Susana', 'Alvesta', 0.06);
insert into salesman (salesman_id, name, city, commission) values (28, 'Esteban', 'Esparza', 0.82);
insert into salesman (salesman_id, name, city, commission) values (29, 'Jenny', 'Nuamuzi', 0.99);
insert into salesman (salesman_id, name, city, commission) values (30, 'Ulrikaumeko', 'Poctol', 0.79);
insert into salesman (salesman_id, name, city, commission) values (31, 'Richard', 'Miass', 0.1);
insert into salesman (salesman_id, name, city, commission) values (32, 'Justino', 'Homagama', 0.77);
insert into salesman (salesman_id, name, city, commission) values (33, 'Carry', 'Diriamba', 0.99);
insert into salesman (salesman_id, name, city, commission) values (34, 'Kiersten', 'Haifa', 0.74);
insert into salesman (salesman_id, name, city, commission) values (35, 'Sherri', 'Changma', 0.72);
insert into salesman (salesman_id, name, city, commission) values (36, 'Julie', 'Al Nashmah', 0.6);
insert into salesman (salesman_id, name, city, commission) values (37, 'Con', 'Ręczno', 0.38);
insert into salesman (salesman_id, name, city, commission) values (38, 'Cymbre', 'Adámas', 0.15);
insert into salesman (salesman_id, name, city, commission) values (39, 'Robina', 'Jinqiao', 0.71);
insert into salesman (salesman_id, name, city, commission) values (40, 'Thedrick', 'Kaka', 0.7);
insert into salesman (salesman_id, name, city, commission) values (41, 'Karlen', 'Xincun', 0.05);
insert into salesman (salesman_id, name, city, commission) values (42, 'Elaine', 'Manosque', 0.07);
insert into salesman (salesman_id, name, city, commission) values (43, 'Wood', 'Kauman', 0.74);
insert into salesman (salesman_id, name, city, commission) values (44, 'Noak', 'Aguas del Padre', 0.11);
insert into salesman (salesman_id, name, city, commission) values (45, 'Lorne', 'Nangkapayung', 0.99);
insert into salesman (salesman_id, name, city, commission) values (46, 'Clerkclaude', 'Stará Ves nad Ondřejnicí', 0.8);
insert into salesman (salesman_id, name, city, commission) values (47, 'Sheena', 'Katuli', 0.61);
insert into salesman (salesman_id, name, city, commission) values (48, 'Isaak', 'Kastsyukovichy', 0.7);
insert into salesman (salesman_id, name, city, commission) values (49, 'Rivy', 'Santa Lucía', 0.18);
insert into salesman (salesman_id, name, city, commission) values (50, 'Cristian', 'Méru', 0.13);
insert into salesman (salesman_id, name, city, commission) values (51, 'Gray', 'Bombarral', 0.27);
insert into salesman (salesman_id, name, city, commission) values (52, 'Brant', 'Hyesan-dong', 0.36);
insert into salesman (salesman_id, name, city, commission) values (53, 'Melisenda', 'Helsingborg', 0.13);
insert into salesman (salesman_id, name, city, commission) values (54, 'Alane', 'Carcassonne', 0.7);
insert into salesman (salesman_id, name, city, commission) values (55, 'Dukie', 'Kwekwe', 0.5);
insert into salesman (salesman_id, name, city, commission) values (56, 'Chadwick', 'Al Bahlūlīyah', 0.03);
insert into salesman (salesman_id, name, city, commission) values (57, 'Ode', 'Derjan', 0.8);
insert into salesman (salesman_id, name, city, commission) values (58, 'Desiree', 'Samir', 0.27);
insert into salesman (salesman_id, name, city, commission) values (59, 'Damien', 'Chunhu', 0.12);
insert into salesman (salesman_id, name, city, commission) values (60, 'Beatrice', 'Baltiysk', 0.44);
insert into salesman (salesman_id, name, city, commission) values (61, 'Lauryn', 'Dianya', 0.99);
insert into salesman (salesman_id, name, city, commission) values (62, 'Janela', 'Al Miftāḩ', 0.84);
insert into salesman (salesman_id, name, city, commission) values (63, 'Milzie', 'Hexi', 0.49);
insert into salesman (salesman_id, name, city, commission) values (64, 'Manfred', 'Kuala Lumpur', 0.92);
insert into salesman (salesman_id, name, city, commission) values (65, 'Jinny', 'Vänersborg', 0.65);
insert into salesman (salesman_id, name, city, commission) values (66, 'Edan', 'Klášter', 0.49);
insert into salesman (salesman_id, name, city, commission) values (67, 'Margareta', 'Jiguan', 0.11);
insert into salesman (salesman_id, name, city, commission) values (68, 'Matty', 'Pokrovskoye', 1.0);
insert into salesman (salesman_id, name, city, commission) values (69, 'Griffith', 'Đưc Trọng', 0.55);
insert into salesman (salesman_id, name, city, commission) values (70, 'Brunhilda', 'Крушево', 0.08);
insert into salesman (salesman_id, name, city, commission) values (71, 'Tabor', 'Elato', 0.08);
insert into salesman (salesman_id, name, city, commission) values (72, 'Fawne', 'Singosari', 0.18);
insert into salesman (salesman_id, name, city, commission) values (73, 'Dino', 'Tevriz', 0.45);
insert into salesman (salesman_id, name, city, commission) values (74, 'Nefen', 'Huangfang', 0.51);
insert into salesman (salesman_id, name, city, commission) values (75, 'Sterling', 'Nyinqug', 0.72);
insert into salesman (salesman_id, name, city, commission) values (76, 'Karlis', 'Ambat', 0.29);
insert into salesman (salesman_id, name, city, commission) values (77, 'Farlee', 'Gyumri', 0.57);
insert into salesman (salesman_id, name, city, commission) values (78, 'Nanni', 'Cà Mau', 0.6);
insert into salesman (salesman_id, name, city, commission) values (79, 'Pembroke', 'El Zulia', 0.2);
insert into salesman (salesman_id, name, city, commission) values (80, 'Wynny', 'Federal', 0.08);
insert into salesman (salesman_id, name, city, commission) values (81, 'Patrizio', 'Rembes', 0.17);
insert into salesman (salesman_id, name, city, commission) values (82, 'Liam', 'Guyi', 0.73);
insert into salesman (salesman_id, name, city, commission) values (83, 'Gnni', 'Cam Ranh', 0.54);
insert into salesman (salesman_id, name, city, commission) values (84, 'Byram', 'Anguil', 0.81);
insert into salesman (salesman_id, name, city, commission) values (85, 'Tybi', 'Waterloo', 0.23);
insert into salesman (salesman_id, name, city, commission) values (86, 'Smith', 'Migues', 0.93);
insert into salesman (salesman_id, name, city, commission) values (87, 'Karylin', 'Fílla', 0.36);
insert into salesman (salesman_id, name, city, commission) values (88, 'Faith', 'Chernyshevsk', 1.0);
insert into salesman (salesman_id, name, city, commission) values (89, 'Karil', 'Fujikawaguchiko', 0.36);
insert into salesman (salesman_id, name, city, commission) values (90, 'Shelly', 'Fier', 0.73);
insert into salesman (salesman_id, name, city, commission) values (91, 'Enrichetta', 'Juhaynah', 0.36);
insert into salesman (salesman_id, name, city, commission) values (92, 'Corrie', 'Almeria', 0.05);
insert into salesman (salesman_id, name, city, commission) values (93, 'Goldi', 'Caramanta', 0.55);
insert into salesman (salesman_id, name, city, commission) values (94, 'Mateo', 'Dawang', 0.52);
insert into salesman (salesman_id, name, city, commission) values (95, 'Alastair', 'Piripiri', 0.26);
insert into salesman (salesman_id, name, city, commission) values (96, 'Zebadiah', 'Ciasna', 0.94);
insert into salesman (salesman_id, name, city, commission) values (97, 'Arman', 'Foz Sousa', 0.68);
insert into salesman (salesman_id, name, city, commission) values (98, 'Francklin', 'Estancia', 0.55);
insert into salesman (salesman_id, name, city, commission) values (99, 'Starlin', 'San Vicente', 0.23);
insert into salesman (salesman_id, name, city, commission) values (100, 'Dorian', 'Arcena', 0.5);

-- without truncate 

DELETE FROM SALESMAN
DBCC CHECKIDENT ('chaityamehta_db.dbo.salesman', RESEED, 0)

-- show table

select * from SALESMAN

--
SET IDENTITY_INSERT customer ON
GO

set identity_insert customer off

--Insert into customer
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (1, 'Vickie', 'Guadalupe Victoria', 98, 14.18);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (2, 'Ethelind', 'Devesa', 324, 54.06);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (3, 'Magdalen', 'Kinlough', 440, 87.57);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (4, 'Humfrey', 'Všemina', 322, 64.55);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (5, 'Franciskus', 'Kabalen', 210, 49.4);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (6, 'Fidole', 'Tianya', 439, 77.91);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (7, 'Jessalin', 'Almere Haven', 495, 59.44);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (8, 'Mattie', 'Charopó', 70, 5.25);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (9, 'Neville', 'Bāqim as Sūq', 255, 65.51);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (10, 'Esmeralda', 'Ciudad Nueva', 85, 64.61);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (11, 'Ulysses', 'Kedungbulu', 19, 96.86);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (12, 'Rahal', 'Dar es Salaam', 261, 98.88);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (13, 'Karol', 'Niepos', 54, 17.78);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (14, 'Zorah', 'Chernogorsk', 487, 19.74);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (15, 'Cecelia', 'Itum-Kali', 386, 81.82);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (16, 'Obie', 'Antequera', 39, 22.92);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (17, 'Grayce', 'Qelëz', 25, 12.55);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (18, 'Leandra', 'Karnice', 207, 59.23);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (19, 'Greer', 'Xai-Xai', 14, 65.63);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (20, 'Eleen', 'Kabalo', 494, 47.96);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (21, 'Ardys', 'Yejia', 451, 39.46);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (22, 'Irena', 'Yunzhong', 190, 65.95);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (23, 'Tiffy', 'Kortkeros', 358, 84.63);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (24, 'Callean', 'Talakag', 261, 22.5);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (25, 'Wyatt', 'Nastola', 100, 39.58);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (26, 'Vita', 'Sofádes', 392, 55.76);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (27, 'Killy', 'Chonghe', 378, 73.54);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (28, 'Silvia', 'Kendayakan', 153, 54.39);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (29, 'Maximilianus', 'Santiago de Chuco', 119, 13.04);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (30, 'Mervin', 'Asyūţ', 69, 38.74);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (31, 'Jeralee', 'Swinford', 466, 1.34);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (32, 'Peg', 'Bosaso', 121, 95.66);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (33, 'Marco', 'La Unión', 33, 67.16);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (34, 'Mill', 'Bolilao', 496, 65.71);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (35, 'Minne', 'Al Khafsah', 162, 34.71);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (36, 'Giordano', 'Sakai', 80, 8.18);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (37, 'Harri', 'Sindangraja', 278, 74.4);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (38, 'Theo', 'Vyškov', 466, 82.3);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (39, 'Alex', 'Regente Feijó', 338, 49.73);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (40, 'Lena', 'Kayima', 239, 23.97);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (41, 'Aundrea', 'Villasis', 142, 91.64);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (42, 'Maudie', 'Eisen', 364, 21.81);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (43, 'Dorice', 'Cibinong', 294, 70.75);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (44, 'Pearle', 'Houston', 191, 79.92);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (45, 'Ilse', 'At Tawāhī', 208, 52.59);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (46, 'Orelie', 'Garagoa', 461, 84.94);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (47, 'Abbott', 'Hwado', 321, 63.85);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (48, 'Letti', 'Hadayang', 376, 32.06);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (49, 'Grant', 'Yinghai', 93, 30.86);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (50, 'Annabel', 'Quarteira', 259, 61.68);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (51, 'Alexa', 'San Miguel', 241, 52.16);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (52, 'Eward', 'Paphos', 278, 53.89);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (53, 'Lincoln', 'Usa River', 429, 95.07);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (54, 'Trista', 'Rambatan', 88, 56.76);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (55, 'Johnath', 'Makin Village', 77, 82.23);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (56, 'Garrett', 'Sankui', 374, 79.51);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (57, 'Ebenezer', 'Lingbeizhou', 198, 87.2);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (58, 'Brynna', 'Ampelgading', 198, 74.88);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (59, 'Ellery', 'Linggamanik', 398, 2.66);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (60, 'Junette', 'Lípa', 196, 88.76);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (61, 'Mord', 'Buruanga', 171, 77.83);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (62, 'Christabel', 'Sabanagrande', 296, 57.15);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (63, 'Annaliese', 'Lela', 15, 70.13);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (64, 'Valaree', 'Jaú', 365, 42.21);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (65, 'Babs', 'Fencheng', 361, 66.56);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (66, 'Hale', 'Jiangdianzi', 473, 40.66);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (67, 'Eddie', 'Maputsoe', 490, 87.75);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (68, 'Nicky', 'Fenghuangdong', 428, 55.1);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (69, 'Tessa', 'San Basilio', 472, 1.71);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (70, 'Vachel', 'Baytīn', 33, 73.32);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (71, 'Miguel', 'Saint-Louis du Sud', 17, 81.07);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (72, 'Frederick', 'Baraguá', 346, 75.57);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (73, 'Yetta', 'Lidzbark', 335, 25.3);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (74, 'Nina', 'May Pen', 109, 67.29);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (75, 'Clem', 'Yaohua', 86, 5.68);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (76, 'Deonne', 'Tandayag', 1, 84.97);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (77, 'Benoit', 'Itatskiy', 94, 50.97);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (78, 'Norah', 'Harrison Brook', 429, 44.85);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (79, 'Paule', 'Smolec', 340, 58.93);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (80, 'Carmelita', 'Dorowa Mining Lease', 194, 77.3);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (81, 'Jervis', 'Fort Macleod', 341, 3.68);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (82, 'Purcell', 'Koronadal', 99, 88.1);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (83, 'Agace', 'Cha-am', 120, 93.77);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (84, 'Jeffrey', 'Iaçu', 110, 6.19);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (85, 'Laurence', 'Azeitão', 18, 53.44);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (86, 'Stesha', 'Esperanza', 207, 31.09);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (87, 'Ingra', 'Huangjin', 143, 35.14);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (88, 'Ingmar', 'Camindangan', 500, 14.38);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (89, 'Andre', 'Baiquan', 178, 98.39);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (90, 'Kristos', 'Paraíso', 358, 56.42);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (91, 'Winona', 'Polomolok', 371, 38.2);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (92, 'Jessa', 'Sumanding', 475, 27.98);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (93, 'Benito', 'Baltiysk', 90, 3.31);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (94, 'Esdras', 'Illkirch-Graffenstaden', 182, 26.07);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (95, 'Daniele', 'Orong', 241, 2.92);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (96, 'Heda', 'Myhiya', 187, 41.59);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (97, 'Shem', 'Perm', 27, 78.26);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (98, 'Ellary', 'Yelizavetinskoye', 473, 2.2);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (99, 'Issi', 'Gijon', 81, 72.32);
insert into CUSTOMER (customer_id, cust_name, city, grade, salesman_id) values (100, 'Roda', 'Sampangan', 465, 90.06);

--insert into order

set identity_insert orders on

insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (1, 861, '6/30/2023', 32, 43);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (2, 267, '12/7/2023', 32, 62);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (3, 465, '12/14/2023', 46, 1);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (4, 330, '5/4/2023', 85, 68);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (5, 802, '10/22/2023', 41, 96);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (6, 447, '3/20/2023', 32, 28);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (7, 754, '11/16/2023', 10, 16);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (8, 651, '9/14/2023', 90, 46);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (9, 509, '7/14/2023', 4, 1);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (10, 486, '3/9/2023', 69, 49);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (11, 724, '4/28/2023', 28, 42);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (12, 869, '6/12/2023', 66, 10);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (13, 965, '4/20/2023', 38, 74);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (14, 581, '10/13/2023', 67, 50);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (15, 206, '7/30/2023', 57, 44);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (16, 612, '2/12/2023', 86, 54);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (17, 803, '1/20/2024', 24, 53);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (18, 557, '11/11/2023', 55, 21);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (19, 556, '11/15/2023', 49, 12);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (20, 384, '11/11/2023', 96, 48);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (21, 720, '9/13/2023', 38, 48);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (22, 248, '6/22/2023', 6, 11);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (23, 779, '8/25/2023', 76, 84);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (24, 840, '9/13/2023', 83, 48);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (25, 835, '9/10/2023', 95, 37);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (26, 645, '8/15/2023', 24, 81);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (27, 980, '5/22/2023', 91, 85);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (28, 847, '6/14/2023', 100, 42);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (29, 799, '4/29/2023', 34, 49);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (30, 794, '1/16/2024', 59, 79);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (31, 629, '4/22/2023', 7, 36);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (32, 493, '6/30/2023', 58, 61);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (33, 476, '10/15/2023', 92, 36);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (34, 725, '1/12/2024', 70, 74);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (35, 285, '6/20/2023', 49, 97);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (36, 904, '6/6/2023', 93, 45);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (37, 443, '1/19/2024', 75, 87);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (38, 818, '1/18/2024', 84, 26);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (39, 492, '5/14/2023', 100, 86);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (40, 596, '11/10/2023', 47, 97);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (41, 853, '5/19/2023', 64, 19);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (42, 560, '4/19/2023', 76, 43);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (43, 492, '3/13/2023', 72, 8);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (44, 315, '11/21/2023', 49, 72);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (45, 221, '11/10/2023', 89, 88);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (46, 892, '10/18/2023', 19, 44);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (47, 961, '12/10/2023', 86, 48);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (48, 815, '1/25/2023', 70, 10);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (49, 748, '5/18/2023', 28, 9);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (50, 631, '9/20/2023', 33, 42);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (51, 499, '1/7/2024', 86, 77);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (52, 424, '1/1/2024', 39, 74);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (53, 580, '9/22/2023', 4, 55);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (54, 845, '11/29/2023', 18, 47);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (55, 629, '12/31/2023', 27, 9);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (56, 901, '8/6/2023', 90, 38);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (57, 766, '6/10/2023', 36, 47);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (58, 318, '9/24/2023', 49, 37);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (59, 786, '7/19/2023', 66, 36);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (60, 627, '3/13/2023', 80, 95);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (61, 536, '10/18/2023', 100, 60);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (62, 221, '12/29/2023', 33, 92);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (63, 288, '11/7/2023', 32, 37);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (64, 703, '6/5/2023', 89, 84);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (65, 760, '4/9/2023', 82, 10);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (66, 794, '4/3/2023', 97, 6);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (67, 728, '10/23/2023', 2, 12);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (68, 246, '10/11/2023', 76, 62);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (69, 346, '1/16/2024', 62, 42);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70, 960, '3/12/2023', 73, 65);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (71, 864, '8/21/2023', 79, 83);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (72, 768, '10/22/2023', 34, 63);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (73, 403, '8/14/2023', 96, 87);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (74, 391, '3/15/2023', 36, 87);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (75, 597, '5/23/2023', 74, 68);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (76, 369, '12/16/2023', 78, 39);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (77, 873, '11/29/2023', 62, 94);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (78, 819, '11/29/2023', 55, 23);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (79, 819, '7/4/2023', 100, 50);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (80, 439, '5/17/2023', 37, 8);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (81, 529, '7/12/2023', 48, 74);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (82, 436, '12/15/2023', 11, 57);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (83, 367, '4/18/2023', 83, 43);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (84, 844, '6/5/2023', 17, 31);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (85, 918, '7/27/2023', 6, 9);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (86, 545, '5/6/2023', 99, 61);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (87, 298, '6/12/2023', 64, 80);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (88, 909, '2/3/2023', 31, 87);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (89, 737, '7/31/2023', 63, 92);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (90, 482, '7/26/2023', 26, 41);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (91, 614, '4/6/2023', 95, 86);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (92, 785, '2/22/2023', 63, 93);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (93, 337, '3/11/2023', 97, 96);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (94, 546, '11/8/2023', 87, 54);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (95, 785, '1/29/2023', 90, 18);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (96, 778, '10/14/2023', 83, 63);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (97, 367, '9/1/2023', 1, 1);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (98, 857, '8/11/2023', 3, 26);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (99, 706, '3/21/2023', 87, 32);
insert into ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) values (100, 663, '10/1/2023', 26, 22);


--write a SQL query to find the salesperson and customer who reside in the same city.Return Salesman, cust_name and city

select salesman.name as "salesmanname" , CUSTOMER.cust_name,CUSTOMER.city from SALESMAN,customer where CUSTOMER.city=salesman.city;

--write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city
select * from SALESMAN
select o.ord_no, o.purch_amt, c.cust_name, c.city from ORDERS o join CUSTOMER c on o.customer_id = c.customer_id where o.purch_amt between 500 and 2000;

--write a SQL query to find the salesperson(s) and the customer(s) he represents.Return Customer Name, city, Salesman, commission

select c.cust_name,c.city,s.name,s.commission from CUSTOMER c left join SALESMAN s on c.salesman_id=s.salesman_id;
GO
--write a SQL query to find salespeople who received commissions of more than 12
--percent from the company. Return Customer Name, customer city, Salesman,
--commission.
select c.cust_name,c.city,s.name,s.commission FROM SALESMAN s left join CUSTOMER c on s.salesman_id=c.salesman_id where s.commission >'0.120';


--write a SQL query to locate those salespeople who do not live in the same city where
--their customers live and have received a commission of more than 12% from the
--company. Return Customer Name, customer city, Salesman, salesman city,
--commission

select c.cust_name,c.city,s.name,s.city,s.commission from SALESMAN s inner join customer c on  s.city ! =c.city where s.salesman_id = c.salesman_id AND s.commission >'0.120';

--write a SQL query to find the details of an order. Return ord_no, ord_date,
--purch_amt, Customer Name, grade, Salesman, commissionselect o.ord_no, o.ord_date,o.purch_amt, c.cust_name,c.grade, s.name, s.commission from ORDERS o inner join CUSTOMER c on o.customer_id =c.customer_idinner join SALESMAN s on o.salesman_id= s.salesman_id;--Write a SQL statement to join the tables salesman, customer and orders so that the
--same column of each table appears once and only the relational rows are returned.select *  from orders inner join CUSTOMER on ORDERS.customer_id = CUSTOMER.customer_id inner join SALESMAN on SALESMAN.salesman_id = ORDERS.salesman_id;--write a SQL query to display the customer name, customer city, grade, salesman,
--salesman city. The results should be sorted by ascending customer_id.

select c.cust_name, c.city,c.grade,s.name,s.city from CUSTOMER c join SALESMAN s on s.salesman_id=c.salesman_id order by customer_id asc;

--write a SQL query to find those customers with a grade less than 300. Return
--cust_name, customer city, grade, Salesman, salesmancity. The result should be
--ordered by ascending customer_id. 

SELECT c.cust_name, c.city, c.grade, s.name, s.city from CUSTOMER c inner join salesman s on s.salesman_id=c.salesman_id where c.grade>300 order by customer_id asc;

--. Write a SQL statement to make a report with customer name, city, order number,
--order date, and order amount in ascending order according to the order date to
--determine whether any of the existing customers have placed an order or not

select c.cust_name, c.city,o.ord_no,o.ord_date,o.purch_amt from customer c  left join orders o on c.customer_id=o.customer_id order by ord_date;

--(11)Write a SQL statement to generate a report with customer name, city, order number,
--order date, order amount, salesperson name, and commission to determine if any of
--the existing customers have not placed orders or if they have placed orders through
--their salesman or by themselves

select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt,s.name,s.commission from CUSTOMER c 
LEFT JOIN ORDERS o ON c.customer_id=o.customer_id
LEFT JOIN SALESMAN S ON S.salesman_id=C.salesman_id  order by ord_date
; 


--Write a SQL statement to generate a list in ascending order of salespersons who
--work either for one or more customers or have not yet joined any of the customersselect s.salesman_id,c.cust_name,c.city,s.city,s.name,c.grade from CUSTOMER c right join SALESMAN s on s.salesman_id=c.salesman_id;--. write a SQL query to list all salespersons along with customer name, city, grade,
--order number, date, and amount

select s.salesman_id,s.name, c.cust_name,c.city,c.grade,o.ord_no,o.ord_date,o.purch_amt from salesman s 
left join CUSTOMER c on c.salesman_id=s.salesman_id
left join ORDERS o on o.salesman_id=s.salesman_id
order by s.salesman_id asc;

--Write a SQL statement to make a list for the salesmen who either work for one or
--more customers or yet to join any of the customers. The customer may have placed,
--either one or more orders on or above order amount 2000 and must have a grade, or
--he may not have placed any order to the associated supplier.

SELECT s.salesman_id, c.cust_name,c.city,c.grade,s.name,s.salesman_id from SALESMAN s
left outer join (CUSTOMER  c LEFT Join ORDERS o ON c.customer_id = o.customer_id)
 on s.salesman_id = c.salesman_id
where o.purch_amt > 10
order by s.salesman_id;

--Write a SQL statement to generate a list of all the salesmen who either work for one
--or more customers or have yet to join any of them. The customer may have placed
--one or more orders at or above order amount 2000, and must have a grade, or he
--may not have placed any orders to the associated supplier.
--- Anser Up No 14


--Write a SQL statement to generate a report with the customer name, city, order no.
--order date, purchase amount for only those customers on the list who must have a
--grade and placed one or more orders or which order(s) have been placed by the
--customer who neither is on the list nor has a grade

select c.cust_name,c.city,o.ord_no,o.ord_date,o.purch_amt from customer c 
right join ORDERS o on c.customer_id=o.customer_id where c.grade is not null order by c.customer_id ;

--Write a SQL query to combine each row of the salesman table with each row of the
--customer table
select * from SALESMAN cross join CUSTOMER;

--Write a SQL statement to create a Cartesian product between salesperson and
--customer, i.e. each salesperson will appear for all customers and vice versa for that
--salesperson who belongs to that city

select * from SALESMAN cross join CUSTOMER  where SALESMAN.city=CUSTOMER.city;

--19. Write a SQL statement to create a Cartesian product between salesperson and
--customer, i.e. each salesperson will appear for every customer and vice versa for
--those salesmen who belong to a city and customers who require a grade
select * from SALESMAN cross join CUSTOMER  where customer.grade is not null and salesman.salesman_id=customer.customer_id;

--Write a SQL statement to make a Cartesian product between salesman and
--customer i.e. each salesman will appear for all customers and vice versa for those
--salesmen who must belong to a city which is not the same as his customer and the
--customers should have their own grade

--select * from SALESMAN inner join CUSTOMER where SALESMAN.city <> CUSTOMER.city;
select * from SALESMAN s cross join CUSTOMER c  where s.city <>c.city and c.grade is not null and s.salesman_id=c.salesman_id order by s.salesman_id;