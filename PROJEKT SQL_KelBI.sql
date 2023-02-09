#PROJEKT SQL_Aliaksandr KEl

#1

CREATE DATABASE Sklep_odzieżowy;

USE Sklep_odzieżowy;

#2
CREATE TABLE Producenci (
    ID_Producenta INTEGER UNIQUE NOT NULL,
    Nazwa_producenta VARCHAR (50) NOT NULL,
    Adres_producenta VARCHAR (50) NOT NULL,
    NIP_producenta VARCHAR (50) NOT NULL,
    Data_podpisania_umowy_z_producentem DATE
    );
    
#3
CREATE TABLE Produkty (
    id_produktu INTEGER UNIQUE NOT NULL,
    id_producenta INTEGER,
    nazwa_produktu VARCHAR (50) NOT NULL,
    opis_produktu VARCHAR (50) NOT NULL,
    cena_netto_zakupu DOUBLE,
    cena_brutto_zakupu DOUBLE,
    cena_netto_sprzedaży DOUBLE,
    cena_brutto_sprzedaży DOUBLE,
    procent_VAT_sprzedaży NUMERIC
    );

#4
CREATE TABLE Zamówienia (
    ID_zamówienia INTEGER NOT NULL,
    id_klienta INTEGER NOT NULL,
    id_produktu INTEGER NOT NULL,
    Data_zamówienia DATE
    );
    
#5

 CREATE TABLE Klienci (
    id_klienta INTEGER UNIQUE NOT NULL,
    id_zamówienia INTEGER NOT NULL,
    imię VARCHAR (50) NOT NULL,
    nazwisko VARCHAR (50) NOT NULL,
    adres VARCHAR (50)
    );

#6

SELECT Producenci.*, Produkty.*
	FROM Produkty
	INNER JOIN  Producenci
	ON Producenci.id_producenta= Produkty.id_producenta;

SELECT  Zamówienia.*, Produkty.*
	FROM Zamówienia
	INNER JOIN  Produkty
	ON Zamówienia.id_produktu= Produkty.id_produktu;
    
SELECT  Zamówienia.*, Klienci.*
	FROM Zamówienia
	INNER JOIN  Klienci
	ON Zamówienia.id_klienta= Klienci.id_klienta;
    
#7.1
INSERT INTO Producenci (ID_Producenta, Nazwa_producenta, Adres_producenta, NIP_producenta, Data_podpisania_umowy_z_producentem )
VALUES  (1,	'Nike', '01-208, Warszawa, ul. Przyokopowa 31', '5272184991', '1998.12.31'),
		(2,	'Adidas', '	02-092, Warszawa, ul. Żwirki I Wigury 18A', '5220000080', '2001.07.31'),
		(3,	'Puma', '00-876, Warszawa, ul. Ogrodowa 58', '5212657753', '2001.07.26'),
		(4,	'Reebok', '02-486, Warszawa, al. Jerozolimskie 174', '5261014050', '2007.04.26'
        );

SELECT * FROM Producenci;

#7.2
    
INSERT INTO Produkty (id_produktu, id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu,cena_brutto_zakupu,cena_netto_sprzedaży,cena_brutto_sprzedaży,procent_VAT_sprzedaży  )
VALUES (10001,	1	,'Trampki',	'Trampki', 144.2, 177.3, 194.65, 215.1, 5.0),
		(10007,	1	, 'Japonki', 'Japonki',	138.0, 169.7, 186.3,	205.9,	5.0),
		(10016,	1	, 'Buty',	'Buty',	260.3	,320.2	,351.45,	388.4,	5.0),
		(10020,	1	, 'Pas',	'Paski',	40.3	,49.6	,54.45,	60.3,	8.0),
		(10031,	1	, 'Piłka',	'Piłki',	48.0	,59.0	,64.8,	71.8,	8.0),
		(10033,	1	, 'Czapka',	'Czapki',	198.0,	243.5,	267.3,	296.2,	8.0),
		(10044,	1	, 'Rajstopy',	'Rajstopy',	123.0,	151.3,	166.05,	186.5,	23.0),
		(10051,	1	, 'Podkoszulek',	'Podkoszulekie',	178.0,	218.9,	240.3,	269.9,	23.0),
		(10055,	1	, 'Koszulka',	'Koszulki',	230.0,	282.9,	310.5,	348.7,	23.0),
		(10062,	1	, 'Spodnie'	, 'Spodnie'	, 304.0,	373.9,	410.4,	460.9,	23.0),
		(10074,	1	, 'Koszula'	, 'Koszule'	,167.0, 205.4,	225.45,	253.2,	23.0),
		(10086,	2	, 'Trampki'	, 'Trampki' 	,123.0,	151.5,	174.90,	193.3,	5.0),
		(10092,	2	, 'Japonki'	, 'Japonki'	,151.0,	185.7,	214.42,	236.9,	5.0),
		(10101,	2	, 'Buty'	, 'Buty'	,425.0,	522.1,	602.79,	666.1,	5.0),
		(10105,	2	, 'Pas'	, 'Paski'	,53.0,	65.2,	75.26,	83.4,	8.0),
		(10116,	2	, 'Piłka'	, 'Piłki'	,31.0,	38.1,	44.02,	48.8,	8.0),
		(10118,	2	, 'Czapka'	,'Czapki'	,152.0	,187.0,	215.84,	239.2,	8.0),
		(10129,	2	,'Rajstopy',	'Rajstopy',	56.0,	68.9,	79.52,	89.3,	23.0),
		(10136,	2	,'Podkoszulek',	'Podkoszulekie',	75.0,	92.3,	106.50,	119.6,	23.0),
		(10140,	2	,'Koszulka'	,'Koszulki'	,144.0,	177.1,	204.48,	229.6,	23.0),
		(10147,	2	,'Spodnie'	,'Spodnie'	,205.0,	252.2,	291.10,	326.9,	23.0),
		(10159,	2	,'Koszula'	,'Koszule'	,186.0,	228.8,	264.12,	296.6,	23.0),
		(10171,	3	,'Trampki' 	,'Trampki' 	,117.0,	144.115,	138.26,	152.8,	5.0),
		(10177,	3	,'Japonki'	,'Japonki'	,181.0,	222.63,	213.58,	236.0,	500),
		(10186,	3	,'Buty'	,'Buty'	,272.0,	334.806,	321.20,	354.9,	5.0),
		(10190,	3	,'Pas'	,'Paski'	,64.0,	78.31,	75.13,	83.2,	8.0),
		(10201,	3	,'Piłka'	,'Piłki'	,43.0,	52.89,	50.74,	56.2,	8.0),
		(10203,	3, 'Czapka', 	'Czapki'	,140.0,	172.2,	165.20,	183.0,	8.0),
		(10214,	3	,'Rajstopy',	'Rajstopy',	168.0,	206.64,	198.24,	222.6,	23.0),
		(10221,	3	,'Podkoszulek',	'Podkoszulekie',	131.0,	161.13,	154.58,	173.6,	23.0),
		(10225,	3	,'Koszulka'	,'Koszulki'	,114.0,	140.22	,134.52	,151.1,	23.0),
		(10232,	3	,'Spodnie'	,'Spodnie'	,178.0,	218.94	,210.04	,235.9,	23.0),
		(10244,	3	,'Koszula'	,'Koszule'	,152.0,	186.96	,179.36	,201.4,	23.0),
		(10256,	4 , 'Trampki', 'Trampki', 119.0, 145.96, 143.59, 158.7,	5.0),
		(10262,	4 , 'Japonki', 'Japonki', 218.0, 268.14, 263.78, 291.5, 5.0),
		(10271,	4	,'Buty', 'Buty', 232.0, 284.74, 280.12, 309.5, 5.0),
		(10275,	4	,'Pas', 'Paski' , 70.0, 85.69,	84.30, 93.4, 8.0),
		(10287,	4	, 'Piłka', 'Piłki', 47.0,	57.81,	56.87,	63.0, 8.0),
		(10288,	4	, 'Czapka'	,'Czapki'	,112.0,	137.76,	135.52,	150.2, 8.0),
		(10299,	4	, 'Rajstopy',	'Rajstopy' , 111.0,	136.53,	134.31,	150.8, 23.0),
		(10311,	4 , 'Podkoszulek',	'Podkoszulekie',88.9,	107.99,	23.99,	106.5,	23.0),
		(10310,	4	, 'Koszulka', 'Koszulki',	158.0,	194.34,	191.18,	214.7,	23.0),
        (10328,	4	, 'Spodnie', 'Spodnie',	162.0,	199.26,	196.02,	220.1,	23.0),
		(10329,	4	, 'Koszula', 'Koszule',	137.0,	167.89,	165.17,	185.5,	23.0
        );

SELECT * FROM Produkty;

#7.3
INSERT INTO Zamówienia (ID_zamówienia, id_klienta, id_produktu,Data_zamówienia )
VALUES (1646528882	,1	,10105	,'2022-02-03'),
		(1744635451	,2	,10232	,'2022-01-21'),
		(1947198155	,3	,10118	,'2022-02-24'),
		(1434958736	,4	,10225	,'2022-03-13'),
		(1276764836	,5	,10129	,'2022-03-15'),
		(1473927932	,6	,10086	,'2022-03-13'),
		(1616823541	,7	,10140	,'2021-11-19'),
		(1845871275	,8	,10016	,'2022-03-30'),
		(1932481394	,9	,10055	,'2021-10-07'),
		(1245698134	,10	,10203	,'2022-05-03'),
		(1495838154	,11	,10074	,'2022-01-19'),
		(1438712763	,12	,10186	,'2021-02-13'),
		(1355825432	,13	,10074	,'2022-03-13'),
		(1469791339	,14	,10328	,'2021-12-14'),
		(1552348684	,15	,10203	,'2021-11-02'),
		(1646528882	,1	,10101	,'2021-08-07'),
		(1744635451	,2	,10214	,'2022-02-05'),
		(1947198155	,3	,10126	,'2022-03-30'),
		(1434958736	,4	,10020	,'2021-09-10'),
		(1276764836	,5	,10101	,'2021-09-19'),
		(1473927932	,6	,10033	,'2022-03-13'),
		(1616823541	,7	,10044	,'2022-01-04'),
		(1845871275	,8	,10262	,'2021-10-24'),
		(1932481394	,9	,10051	,'2021-10-06'),
		(1245698134	,10	,10031	,'2021-12-06'),
		(1495838154	,11	,10062	,'2022-02-26'),
		(1438712763	,12	,10041	,'2021-08-24'),
		(1355825432	,13	,10186	,'2021-10-18'),
		(1469791339	,14	,10299	,'2021-10-05'),
		(1552348684	,15	,10171	,'2022-02-24'),
		(1646528882	,1	,10105	,'2021-12-08'),
		(1744635451	,2	,10328	,'2022-04-16'),
		(1947198155	,3	,10118	,'2021-11-10'),
		(1434958736	,4	,10221	,'2021-11-21'),
		(1276764836	,5	,10244	,'2022-02-07'),
		(1473927932	,6	,10211	,'2021-05-02'),
		(1616823541	,7	,10116	,'2021-11-21'),
		(1845871275	,8	,10256	,'2021-02-13'),
		(1932481394	,9	,10275	,'2022-01-28'),
		(1245698134	,10	,10171	,'2021-09-04'),
		(1495838154	,11	,10136	,'2021-11-19'),
		(1438712763	,12	,10190	,'2021-05-02'),
		(1355825432	,13	,10299	,'2021-07-19'),
		(1469791339	,14	,10271	,'2021-11-19'),
		(1552348684	,15	,10171	,'2022-02-05'
        );
    
SELECT * FROM Zamówienia;

#7.4
INSERT INTO Klienci (id_klienta, id_zamówienia, imię,nazwisko,adres )
VALUES  (1	,1646528882	,'Anna	','Kowalski',' 03-083 Warszawa, ul.Tapetowa 23 _17'),
		(2	,1744635451	,'Roman	','Wiśniewski','	01-887 Warszawa, ul. Stefana Żeromskiego 15a_59'),
		(3	,1947198155	,'Tomasz	','Wójcik	','01-461 Warszawa, ul. Bogatyńska 3_32'),
		(4	,1434958736	,'Agata 	','Kowalczyk	','02-758 Warszawa, ul. Mangalia 1_118'),
		(5	,1276764836	,'Elżbieta	','Kamiński','	02-995 Warszawa, ul. Gratyny 24_165'),
		(6	,1473927932	,'Przemysław','Lewandowski', '01-821 Warszawa, ul. Swarzewska 43_19'),
		(7	,1616823541	,'Robert	','Zieliński', '00-854 Warszawa, ul. Ciepła 3_28'),
		(8	,1845871275	,'Radosław	','Woźniak	','00-311 Warszawa, ul. Browarna 6_68'),
		(9	,1932481394	,'Joanna	','Szymańska	','472 Warszawa, ul. Cieplarniana 12 _51'),
		(10	,1245698134	,'Patryk	','Dąbrowski','	00-716 Warszawa,ul. Bartycka 11b_12'),
		(11	,1495838154	,'Andrzej	','Kozłowski','	01-519 Warszawa, ul. Dymińska 10_37'),
		(12	,1438712763	,'Ewa	','Mazur','	02-993 Warszawa, ul. Syta 54_7'),
		(13	,1355825432	,'Andrze	',' Jankowski','	00-586 Warszawa,  ul. Flory 4_39'),
		(14	,1469791339	,'Norbert	',' Lis',	'01-466 Warszawa, ul. Budy 3a_9'),
		(15	,1552348684	,'Alex','	Kel','01-687 Warszawa, ul. Lektykarska 56_3'
        );
        
SELECT * FROM Klienci;  

#8 

SELECT Produkty.*
	FROM Produkty
	INNER JOIN  Producenci
	ON Producenci.id_producenta= Produkty.id_producenta
    WHERE Producenci.id_producenta =1
    ;

#9

SELECT Produkty.*
	FROM Produkty
	INNER JOIN  Producenci
	ON Producenci.id_producenta= Produkty.id_producenta
    WHERE Producenci.id_producenta =1
    ORDER BY nazwa_produktu ASC
    ;

#10

SELECT Producenci.ID_Producenta, Produkty.cena_netto_zakupu, ROUND  (AVG(cena_netto_zakupu),2) AS 'średnią cena netto zakupu',
								Produkty.cena_netto_zakupu, ROUND  (AVG(cena_brutto_zakupu),2) AS 'średnią cena brutto zakupu',
                                Produkty.cena_netto_zakupu, ROUND  (AVG(cena_netto_sprzedaży),2) AS 'średnią cena netto sprzedaży',
                                Produkty.cena_netto_zakupu, ROUND  (AVG(cena_brutto_sprzedaży),2) AS 'średnią cena brutto sprzedaży'
	FROM Producenci
	INNER JOIN  Produkty
	ON Produkty.id_producenta=Producenci.ID_Producenta
    WHERE Producenci.id_producenta =1
    ;

#11 

SELECT Produkty.nazwa_produktu, Produkty.cena_brutto_sprzedaży, id_producenta,
CASE
WHEN cena_brutto_sprzedaży < (SELECT ROUND(AVG(cena_brutto_sprzedaży),2)
FROM Sklep_odzieżowy.Produkty
WHERE id_producenta=1 ) THEN 'Tanie' 
ELSE 'Drogie'
END AS kategoria_cenowa
FROM Sklep_odzieżowy.Produkty
WHERE id_producenta = 1;

#???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????

SELECT Produkty.nazwa_produktu, Produkty.cena_netto_zakupu, 'Tanie' AS 'grupa produktów', Producenci.ID_Producenta
	FROM  Produkty,Producenci
		WHERE Producenci.id_producenta =1
		AND Produkty.cena_netto_zakupu >(SELECT  min(cena_netto_zakupu)
		FROM Produkty
		WHERE  Producenci.ID_Producenta=Produkty.id_producenta)
       	HAVING AVG (cena_netto_zakupu)
UNION ALL
		(SELECT Produkty.nazwa_produktu, Produkty.cena_netto_zakupu, 'Drogie' , Producenci.ID_Producenta
	FROM  Produkty,Producenci
		WHERE Producenci.id_producenta =1
		AND Produkty.cena_netto_zakupu= (SELECT max(cena_netto_zakupu)
		FROM Produkty
		WHERE  Producenci.ID_Producenta=Produkty.id_producenta)
       	HAVING AVG (cena_netto_zakupu)
        ORDER BY nazwa_produktu);
            
              
#12
  
  SELECT nazwa_produktu
	FROM  Produkty
	INNER JOIN  Zamówienia
	ON Zamówienia.id_produktu= Produkty.id_produktu;

#13

SELECT Produkty.*
	FROM Produkty
	INNER JOIN  Zamówienia
	ON Zamówienia.id_produktu= Produkty.id_produktu
    LIMIT 5
;

#14

SELECT  ROUND (SUM(cena_netto_zakupu),2) AS 'łączna wartość wszystkich zamówień w cenach netto zakupu',
		ROUND (SUM(cena_brutto_zakupu),2) AS 'łączna wartość wszystkich zamówień w cenach brutto zakupu',
		ROUND (SUM(cena_netto_sprzedaży),2) AS 'łączna wartość wszystkich zamówień w cenach netto sprzedaży',
		ROUND (SUM(cena_brutto_sprzedaży),2) AS 'łączna wartość wszystkich zamówień w cenach brutto sprzedaży'
	FROM Produkty
	INNER JOIN  Zamówienia
	ON Zamówienia.id_produktu= Produkty.id_produktu;
    
   #GROUP BY Produkty.id_producenta;


#15


SELECT  Zamówienia.ID_zamówienia, Produkty.nazwa_produktu, Data_zamówienia
	FROM Zamówienia
	INNER JOIN  Produkty
	ON Zamówienia.id_produktu= Produkty.id_produktu
    ORDER BY  Data_zamówienia DESC;

#16

  SELECT Produkty.*
	FROM  Produkty
    WHERE '';
    

  SELECT Produkty.*
	FROM  Produkty
    WHERE NOT '';

#17

SELECT  Produkty.nazwa_produktu, COUNT(Produkty.nazwa_produktu) AS 'produkt najczęściej sprzedawany', Produkty.cena_netto_sprzedaży 
	FROM Produkty
	INNER JOIN  Zamówienia
	ON Produkty.id_produktu= Zamówienia.id_produktu
	GROUP BY nazwa_produktu
	ORDER BY COUNT(nazwa_produktu) DESC;
    
  
#18

SELECT  Zamówienia.Data_zamówienia, COUNT(Zamówienia.Data_zamówienia) AS 'najwięcej złożonych zamówień na dzień'
	FROM Zamówienia
	INNER JOIN  Produkty
	ON Zamówienia.id_produktu= Produkty.id_produktu
	GROUP BY Data_zamówienia
	ORDER BY COUNT(Data_zamówienia) DESC; 