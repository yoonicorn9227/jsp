
--Cross Join
select * from departments; --27개
select * from employees; --107개
desc employees; --컬럼 13개
select * from employees,departments; --Cross Join : 107개 * 27개 =2889개 : 무의미한 조인이된다. (두개의 테이블을 합친것)


select employee_id, emp_name, department_id from employees
where department_id = 50;

--[Cross Join]_equi join
select employee_id, emp_name,a.department_id, b.department_id, b.department_name, b.parent_id, b.manager_id, b.create_date, b.update_date 
from employees a, departments b
where a.department_id = b.department_id and --equi join : 같은컬럼의 데이터를 가지고 같은 값을 가진 컬럼데이터의 여러가지 컬럼데이터를 가져오는것
a.department_id = 50
;

--
--drop table stuscore;

create table stuinfo (
	stunum number(4) primary key,
	name VARCHAR2(50),
	grade number,
	email VARCHAR2(50),
	phone VARCHAR2(50),
	gender VARCHAR2(50),
	address VARCHAR2(50)
);

insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (1, 'Helsa', 2, 'hsorby0@yolasite.com', '772-787-9176', 'Female', '36759 Gerald Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (2, 'Krystalle', 4, 'kdraycott1@cyberchimps.com', '916-220-1241', 'Female', '2 Caliangt Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (3, 'Merell', 3, 'mdahlbom2@constantcontact.com', '270-530-7123', 'Male', '5956 Hovde Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (4, 'Dasha', 3, 'dmatthisson3@tmall.com', '616-631-2728', 'Female', '834 Moulton Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (5, 'Mill', 2, 'mobee4@mayoclinic.com', '146-801-8752', 'Male', '38328 Birchwood Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (6, 'Aylmer', 1, 'awalter5@yelp.com', '332-614-8699', 'Male', '584 Miller Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (7, 'Benoite', 3, 'bbimson6@bandcamp.com', '195-765-8776', 'Female', '2871 Bowman Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (8, 'Sara', 4, 'salen7@guardian.co.uk', '318-525-8952', 'Female', '6481 Grim Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (9, 'Ludovico', 4, 'ljesson8@amazon.de', '629-780-8013', 'Male', '0 Cambridge Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (10, 'Neal', 1, 'nandreotti9@engadget.com', '135-499-1629', 'Male', '6 Park Meadow Lane');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (11, 'Elizabeth', 3, 'eslocoma@springer.com', '390-928-2034', 'Female', '6568 Reinke Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (12, 'Wyn', 1, 'wshearmanb@nps.gov', '174-173-8171', 'Male', '594 Summit Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (13, 'Konstance', 3, 'kmannaghc@sphinn.com', '672-952-9275', 'Female', '97 Clyde Gallagher Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (14, 'Rosamond', 1, 'rpflegerd@timesonline.co.uk', '550-652-2736', 'Female', '8 Claremont Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (15, 'Tabbi', 1, 'tdivinye@boston.com', '481-142-3576', 'Female', '1 Tennessee Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (16, 'Chuck', 2, 'cruncief@webeden.co.uk', '786-995-1655', 'Male', '39 Lyons Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (17, 'Sheridan', 1, 'spesselg@youtu.be', '279-117-7099', 'Male', '5000 Stephen Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (18, 'Morly', 2, 'mbearwardh@wikipedia.org', '887-664-1864', 'Male', '42696 Logan Avenue');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (19, 'Wenda', 3, 'wjordoni@engadget.com', '584-213-2757', 'Female', '64 Swallow Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (20, 'Vlad', 1, 'vedsellj@ebay.co.uk', '644-892-1871', 'Male', '62 Goodland Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (21, 'Rosabelle', 4, 'rrighyk@nba.com', '441-209-3177', 'Genderfluid', '3228 Gale Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (22, 'Karoline', 2, 'ksummerladl@wikia.com', '326-215-0884', 'Female', '4883 Randy Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (23, 'Forbes', 1, 'fvivianm@state.tx.us', '129-903-2773', 'Male', '3 Independence Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (24, 'Ansley', 1, 'aswaynen@vimeo.com', '882-968-1730', 'Female', '0875 Moland Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (25, 'Florie', 3, 'froberso@naver.com', '603-847-3346', 'Female', '4 East Crossing');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (26, 'Miran', 2, 'mcoyishp@ftc.gov', '414-175-0414', 'Female', '535 Barnett Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (27, 'Hugues', 2, 'hhrishchenkoq@who.int', '364-221-1419', 'Male', '027 Grayhawk Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (28, 'Gwen', 4, 'gwoodroffr@mac.com', '314-746-3494', 'Female', '25355 Derek Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (29, 'Vachel', 2, 'vmatchams@last.fm', '729-705-0112', 'Male', '81718 Sunbrook Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (30, 'Christan', 1, 'chazeleyt@google.nl', '876-557-8208', 'Female', '5 Huxley Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (31, 'Nahum', 3, 'nfoottitu@icio.us', '621-203-2483', 'Male', '6470 Forest Run Crossing');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (32, 'Daile', 1, 'dmasseov@discovery.com', '205-704-0956', 'Female', '0 Heath Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (33, 'Shaun', 2, 'shalltw@samsung.com', '380-706-5057', 'Female', '2 Fuller Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (34, 'Ainsley', 3, 'alanahanx@earthlink.net', '314-321-4989', 'Female', '5 Sauthoff Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (35, 'Stanislaus', 4, 'sstronghilly@cnn.com', '875-551-9938', 'Male', '69 Talmadge Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (36, 'Aleksandr', 4, 'apardalz@eventbrite.com', '349-137-9445', 'Polygender', '37749 Kedzie Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (37, 'Shelby', 2, 'ssmithies10@tripadvisor.com', '984-672-6379', 'Female', '9651 Arrowood Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (38, 'Geoffry', 1, 'gvaines11@simplemachines.org', '774-248-9472', 'Male', '2 Dexter Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (39, 'Elroy', 4, 'ecars12@mac.com', '806-721-6112', 'Male', '627 Sycamore Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (40, 'Mikael', 1, 'mharryman13@boston.com', '645-743-2624', 'Male', '1 Elgar Lane');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (41, 'Ario', 3, 'ataylor14@columbia.edu', '700-596-1248', 'Male', '996 Saint Paul Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (42, 'Isabelita', 2, 'ilansdale15@delicious.com', '157-635-2947', 'Female', '113 Anniversary Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (43, 'Constancy', 2, 'ccrafts16@newyorker.com', '973-750-3280', 'Female', '67464 Arkansas Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (44, 'Matthaeus', 3, 'meve17@deliciousdays.com', '785-150-1685', 'Male', '2 Carberry Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (45, 'Georg', 4, 'giannuzzelli18@bigcartel.com', '254-651-5350', 'Male', '64 Spohn Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (46, 'Leonard', 3, 'lcarefull19@1und1.de', '331-764-0221', 'Male', '46 Mockingbird Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (47, 'Deborah', 2, 'dbeccles1a@trellian.com', '128-227-7919', 'Female', '9633 Westend Lane');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (48, 'Rhody', 2, 'rdella1b@dagondesign.com', '607-980-8356', 'Female', '90754 Florence Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (49, 'Syman', 2, 'seslinger1c@squarespace.com', '111-425-6033', 'Male', '6720 Swallow Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (50, 'Emilia', 3, 'epashbee1d@java.com', '304-461-3578', 'Female', '080 Waubesa Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (51, 'Meggy', 3, 'mjosipovic1e@businesswire.com', '543-130-5027', 'Female', '024 Loomis Avenue');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (52, 'Mari', 3, 'msnoday1f@ted.com', '103-230-2001', 'Female', '4531 Transport Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (53, 'Rickard', 4, 'rcleyne1g@state.gov', '565-810-3807', 'Male', '630 Warner Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (54, 'Yoko', 3, 'ylidierth1h@noaa.gov', '313-719-2845', 'Genderqueer', '45289 Holmberg Crossing');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (55, 'Alano', 1, 'acastro1i@columbia.edu', '280-180-8231', 'Male', '699 Tomscot Center');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (56, 'Kienan', 3, 'kbatham1j@mashable.com', '722-795-0476', 'Genderfluid', '47 Maple Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (57, 'Meyer', 2, 'mgimeno1k@1688.com', '713-461-2325', 'Male', '2572 Farwell Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (58, 'Gnni', 1, 'gbonny1l@amazon.de', '246-897-5166', 'Female', '1 Summer Ridge Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (59, 'Payton', 2, 'pmallaby1m@artisteer.com', '362-923-0043', 'Male', '6763 Marcy Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (60, 'Marie-jeanne', 1, 'mlidgey1n@soup.io', '754-362-5678', 'Female', '98 Dayton Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (61, 'Ingaborg', 2, 'isharrem1o@ftc.gov', '197-686-1379', 'Female', '27 Dakota Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (62, 'Bradford', 1, 'brohlf1p@irs.gov', '625-397-1071', 'Male', '1 Manufacturers Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (63, 'Alvina', 1, 'adaubney1q@alexa.com', '568-234-0314', 'Female', '6 Kedzie Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (64, 'Aldrich', 1, 'ashulem1r@prweb.com', '313-527-5537', 'Male', '7 Crescent Oaks Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (65, 'Laurene', 2, 'lthackwray1s@yelp.com', '419-681-9718', 'Female', '02541 Summer Ridge Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (66, 'Aila', 3, 'ahaskur1t@deviantart.com', '793-589-2711', 'Female', '0455 Alpine Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (67, 'Ronny', 2, 'rchaudrelle1u@globo.com', '710-579-9499', 'Female', '71438 Logan Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (68, 'Joel', 4, 'jondrich1v@tinyurl.com', '109-702-6777', 'Male', '219 Hollow Ridge Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (69, 'Ermin', 4, 'ebartos1w@nymag.com', '126-889-1974', 'Male', '5780 Sachs Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (70, 'Nancey', 2, 'nmigheli1x@wsj.com', '861-562-5543', 'Female', '4936 Kenwood Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (71, 'Giffie', 1, 'ggrasner1y@vimeo.com', '232-131-6009', 'Male', '2407 Sheridan Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (72, 'Antonius', 3, 'aallnutt1z@prweb.com', '459-456-5278', 'Male', '94831 Steensland Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (73, 'Mirella', 4, 'mfairest20@1und1.de', '722-263-5562', 'Female', '15 Duke Center');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (74, 'Irita', 4, 'idomegan21@t-online.de', '557-724-4119', 'Female', '41 Sunbrook Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (75, 'Janeczka', 3, 'jkirman22@cmu.edu', '907-354-9893', 'Female', '2 Mitchell Lane');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (76, 'Crosby', 1, 'cborrill23@godaddy.com', '421-633-8954', 'Male', '97 Nevada Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (77, 'Dacey', 3, 'diacomettii24@dailymotion.com', '512-552-7945', 'Female', '662 Loftsgordon Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (78, 'Enrique', 3, 'esymper25@xing.com', '794-349-3132', 'Male', '376 Crescent Oaks Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (79, 'Dion', 3, 'drodriguez26@opensource.org', '941-807-7264', 'Male', '69207 Wayridge Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (80, 'Milli', 4, 'mmozzi27@bbc.co.uk', '424-331-6751', 'Genderfluid', '143 Morningstar Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (81, 'Talia', 1, 'thutchinson28@prweb.com', '765-418-5941', 'Female', '6 Little Fleur Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (82, 'Salvatore', 2, 'smacallaster29@phoca.cz', '817-438-1756', 'Male', '88 Judy Center');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (83, 'Emma', 2, 'ecreek2a@google.co.uk', '772-183-4810', 'Non-binary', '97136 Moulton Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (84, 'Waneta', 2, 'wjelks2b@mtv.com', '444-159-6288', 'Female', '474 Shasta Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (85, 'Bernhard', 3, 'brewbottom2c@google.co.uk', '206-423-5160', 'Male', '22 Corben Avenue');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (86, 'Cirillo', 1, 'cjewess2d@cbc.ca', '976-274-8954', 'Male', '40 Pierstorff Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (87, 'Devlin', 1, 'dgilhouley2e@japanpost.jp', '740-131-3708', 'Male', '42 Northland Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (88, 'Amabelle', 4, 'asommerville2f@pcworld.com', '853-507-6362', 'Female', '37 Spohn Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (89, 'Breena', 4, 'btheseira2g@icio.us', '994-703-9561', 'Female', '0 Moland Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (90, 'Otis', 2, 'oponter2h@hugedomains.com', '773-815-9765', 'Male', '85 Meadow Ridge Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (91, 'Mel', 3, 'mgreatbatch2i@reuters.com', '442-528-2203', 'Male', '3 Bashford Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (92, 'Jamie', 1, 'jsimionato2j@walmart.com', '697-156-5743', 'Female', '89 Quincy Junction');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (93, 'Leonerd', 3, 'lbrockie2k@phoca.cz', '796-604-8851', 'Male', '100 Melvin Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (94, 'Layla', 1, 'lwildey2l@mayoclinic.com', '975-646-0631', 'Female', '96 Messerschmidt Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (95, 'Emmy', 4, 'emcavin2m@jimdo.com', '139-805-0740', 'Male', '53 Kropf Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (96, 'Emile', 4, 'epoacher2n@usda.gov', '722-228-1259', 'Male', '81 Veith Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (97, 'Ursulina', 3, 'urockliffe2o@miitbeian.gov.cn', '855-331-6394', 'Female', '5136 Messerschmidt Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (98, 'Monroe', 1, 'mjertz2p@ocn.ne.jp', '847-483-8380', 'Male', '21 Caliangt Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (99, 'Coraline', 3, 'ckembley2q@timesonline.co.uk', '170-559-7376', 'Female', '13936 Anderson Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (100, 'Aloin', 3, 'amaffey2r@flickr.com', '503-712-6520', 'Male', '44 Grasskamp Place');

commit;
select * from stuinfo;
desc stuinfo;

----------------
create table stuscore (
	sno number,
	stunum number,
	kor number,
	eng number,
	math number,
	total number,
	avg number,
	rank number,
    constraint fk_stunum foreign key(stunum)
    references stuinfo(stunum)
);


insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (1, 1, 63, 99, 85, 247, 82.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (2, 2, 86, 99, 84, 269, 89.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (3, 3, 71, 78, 61, 210, 70, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (4, 4, 67, 52, 71, 190, 63.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (5, 5, 95, 59, 66, 220, 73.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (6, 6, 60, 50, 77, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (7, 7, 66, 68, 71, 205, 68.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (8, 8, 75, 83, 53, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (9, 9, 82, 93, 93, 268, 89.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (10, 10, 66, 81, 67, 214, 71.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (11, 11, 65, 77, 71, 213, 71, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (12, 12, 99, 61, 91, 251, 83.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (13, 13, 94, 52, 98, 244, 81.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (14, 14, 56, 88, 95, 239, 79.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (15, 15, 97, 66, 85, 248, 82.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (16, 16, 80, 91, 84, 255, 85, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (17, 17, 70, 76, 92, 238, 79.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (18, 18, 63, 95, 76, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (19, 19, 64, 76, 78, 218, 72.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (20, 20, 99, 52, 66, 217, 72.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (21, 21, 60, 59, 68, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (22, 22, 87, 53, 57, 197, 65.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (23, 23, 81, 50, 86, 217, 72.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (24, 24, 98, 57, 82, 237, 79, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (25, 25, 56, 84, 64, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (26, 26, 60, 83, 79, 222, 74, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (27, 27, 98, 93, 100, 291, 97, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (28, 28, 52, 85, 78, 215, 71.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (29, 29, 68, 52, 54, 174, 58, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (30, 30, 76, 86, 93, 255, 85, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (31, 31, 91, 77, 66, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (32, 32, 73, 72, 64, 209, 69.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (33, 33, 81, 85, 62, 228, 76, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (34, 34, 52, 88, 55, 195, 65, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (35, 35, 95, 97, 64, 256, 85.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (36, 36, 53, 56, 88, 197, 65.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (37, 37, 54, 56, 94, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (38, 38, 50, 86, 51, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (39, 39, 58, 57, 77, 192, 64, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (40, 40, 89, 60, 71, 220, 73.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (41, 41, 81, 99, 89, 269, 89.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (42, 42, 52, 55, 95, 202, 67.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (43, 43, 95, 80, 74, 249, 83, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (44, 44, 60, 95, 74, 229, 76.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (45, 45, 73, 63, 75, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (46, 46, 88, 95, 67, 250, 83.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (47, 47, 84, 59, 70, 213, 71, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (48, 48, 96, 77, 61, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (49, 49, 66, 75, 63, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (50, 50, 71, 61, 74, 206, 68.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (51, 51, 81, 84, 99, 264, 88, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (52, 52, 65, 72, 55, 192, 64, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (53, 53, 82, 67, 65, 214, 71.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (54, 54, 100, 68, 86, 254, 84.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (55, 55, 79, 61, 84, 224, 74.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (56, 56, 66, 77, 82, 225, 75, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (57, 57, 99, 75, 53, 227, 75.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (58, 58, 91, 93, 81, 265, 88.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (59, 59, 58, 93, 64, 215, 71.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (60, 60, 94, 78, 88, 260, 86.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (61, 61, 96, 97, 68, 261, 87, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (62, 62, 75, 69, 80, 224, 74.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (63, 63, 54, 68, 62, 184, 61.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (64, 64, 58, 61, 95, 214, 71.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (65, 65, 99, 52, 89, 240, 80, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (66, 66, 83, 99, 58, 240, 80, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (67, 67, 55, 65, 91, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (68, 68, 66, 67, 53, 186, 62, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (69, 69, 97, 68, 65, 230, 76.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (70, 70, 57, 58, 72, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (71, 71, 73, 88, 73, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (72, 72, 57, 53, 69, 179, 59.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (73, 73, 84, 78, 56, 218, 72.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (74, 74, 64, 66, 93, 223, 74.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (75, 75, 65, 89, 56, 210, 70, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (76, 76, 58, 54, 95, 207, 69, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (77, 77, 59, 79, 90, 228, 76, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (78, 78, 77, 89, 62, 228, 76, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (79, 79, 62, 68, 72, 202, 67.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (80, 80, 51, 77, 99, 227, 75.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (81, 81, 75, 64, 55, 194, 64.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (82, 82, 80, 73, 97, 250, 83.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (83, 83, 58, 88, 84, 230, 76.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (84, 84, 94, 89, 60, 243, 81, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (85, 85, 60, 60, 56, 176, 58.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (86, 86, 70, 98, 59, 227, 75.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (87, 87, 68, 91, 52, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (88, 88, 84, 76, 85, 245, 81.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (89, 89, 54, 65, 85, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (90, 90, 89, 78, 84, 251, 83.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (91, 91, 76, 64, 58, 198, 66, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (92, 92, 60, 90, 88, 238, 79.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (93, 93, 74, 61, 91, 226, 75.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (94, 94, 96, 85, 69, 250, 83.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (95, 95, 91, 77, 86, 254, 84.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (96, 96, 74, 96, 86, 256, 85.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (97, 97, 55, 93, 69, 217, 72.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (98, 98, 51, 67, 95, 213, 71, 0);

commit;


select * from stuscore;
select * from stuinfo;

--join
select sno,A.stunum,name,grade,gender,kor,eng,math,total,round(avg,2) as avg
from stuinfo A, stuscore B
where A.stunum =B.stunum 
and lower(name) like '%d%' 
and gender='Male' 
and total>=250  --equi join and 
;

-- David Austin이 사람이 속한 부서의 사람들을 출력하는데 부서명도 출력.
--사원번호, 사원명, 월급,부서번호,부서명(d_name),/// departments테이블 부서입력일(c_date), 부서수정일(u_date),직급번호(j_id)
select * from employees
where emp_name='David Austin';
select * from departments;
select * from employees;


select employee_id, emp_name, salary, B.department_id, job_id, department_name, B.create_date, B.update_date
from employees A, departments B
where A.department_id=B.department_id and 
B.department_id=(
select department_id from employees 
where emp_name='David Austin')
;


select employee_id, emp_name, salary, b.department_id, job_id, department_name, b.create_date, b.update_date
from employees a, departments b
where a.department_id = b.department_id and
b.department_id =(
select department_id from employees
where emp_name='David Austin'
)
;

select * from countries;

select * from customers;

--North 들어간 Address 모두출력하시오.
--생일 1945년 이상
select  * from customers
where lower(cust_street_address) like '%north%' 
and cust_year_of_birth>=1945
;

select * from jobs; --b
select * from employees; --a
select * from departments;
--직급별 최소월급이 5000 이상인 직급의 사람들중 50번 이상인 사람들 출력
-- employees, jobs, departments
--사원번호, 사원명, 월급, 직급번호, 직급별 최소월급, 부서번호, 부서명
select employee_id,emp_name,salary,a.job_id,min_salary,a.department_id,department_name
from employees a, jobs b ,departments c
where a.job_id=b.job_id
and a.department_id=c.department_id
and a.department_id>=50
and min_salary>=5000
order by min_salary asc
;



select * from employees a, jobs b, departments c
where a.department_id= c.department_id 
and a.job_id = b.job_id
and min_salary>=5000 
and department_id>=50
order by min_salary asc
;



select * from jobs; --b
select * from employees; --a
select * from departments; --c
--sa_man직급을 가진 사원번호, 사원명, 직급명, 부서번호, 부서명을 
select employee_id,emp_name,job_id, a.department_id, b.department_name 
from employees a , jobs b, departments c
where a.department_id = c.department_id 
and a.job_id = b.job_id
and a.job_id ='SA_MAN'
;




--Cross Join(Non-Equi Join)

create table SALGRADE(
grade varchar2(5),
low_sal number,
high_sal number
);

select salary from employees
order by salary asc;


-- 2001~3000 : 5CLS
-- 3001~4000 : 4CLS
-- 4001~8000 : 3CLS
-- 8001~10000 : 2CLS
-- 10001 ~14000  : 1CLS
-- 14001~ 20000 : TOP

--insert into salgrade values (
--'5CLS',2001,3000


--);


update salgrade
set high_sal = 30000
where grade ='TOP'
;
commit;
select * from salgrade;

--Non-Equi Join 사용: 2개이상의 테이블에 같은 컬럼이 없을때
select salary from employees; --salgrade와 같은 컬럼이 없음
select * from salgrade; -- 
--Non
select  employee_id, emp_name, salary,grade from employees A, salgrade B
where salary between low_sal and high_sal --Non equi join
order by employee_id
;


select * from employees
where manager_id is null;


create table stugrade (
grade varchar2(10),
low_score number,
high_score number
);



select * from stuinfo;
select * from stuscore;
select * from stugrade;


--equi join & non-equi join
--stuinfo, stuscore, stugrade
--non-equi join avg 값을 가지고
-- 학번 이름 학년 합계 평균 등급을 출력하시오.
select a.stunum,name,total,round(avg,2),c.grade,b.grade 
from stuscore a, stugrade b, stuinfo c
where a.stunum = b.stunum
and avg between low_score and high_score
order by avg desc
;


--[case when(조건식) end as 별칭 ]함수
select stunum,total,avg,
case
when avg>=90 then 'A'
when avg>=80 then 'B'
when avg>=70 then 'C'
when avg>=60 then 'D'
else 'F'
end as grade 
from stuscore 
;

select employee_id, emp_name, salary,
case
when salary<=4000 then 'Y'
else 'N'
end as "연봉인상"
from employees
;


select * from kor_loan_status;
--지역별 region로  그룹핑해서 대출금액을 출력하시오.

select period,region, sum(loan_jan_amt) loan 
from kor_loan_status
group by region,period
order by loan desc
;

select period ,sum(loan_jan_amt) loan
from kor_loan_status
group by period
;

--년도별 대출금액을 출력하시오.(substr사용)
select substr(period,1,4) ,sum(loan_jan_amt) loan
from kor_loan_status
group by substr(period,1,4) 
;

--월별 대출금액을 출력하시오.(substr사용)
select substr(period,5,2) ,sum(loan_jan_amt) loan
from kor_loan_status
group by substr(period,5,2) 
;




--부서별 총월급
select * from employees;
select * from departments;
select a.department_id, department_name, sum(salary) 
from employees a, departments b
where a.department_id = b.department_id
group by a.department_id, b.department_name
;


--Cross Join [Self join]  : 같은 테이블을 2개써서 join

select employee_id, emp_name,department_id,manager_id 
from employees
order by department_id
;

--self join(많이 쓰임)
select a.employee_id,a.emp_name,a.manager_id ,b.emp_name --self join
from employees a, employees b
where a.manager_id = b.employee_id --self join
order by a.department_id
;



--퀴즈) 매니저 이름이 Steven King인 사원을 모두 출력하시오.
--employee_id, emp_name, manager_id , emp_name(상사)
select a.employee_id, a.emp_name, a.manager_id, b.emp_name 
from  employees a, employees b
where a.manager_id = b.employee_id
and b.emp_name = 'Steven King'
order by employee_id
;

--추가 퀴즈) 부서번호, 부서명, 직급타이틀( job title) - self join, equi join 사용
select a.employee_id, a.emp_name, a.manager_id, b.emp_name, 
a.department_id,c.department_name, job_title
from  employees a, employees b, departments c, jobs d
where a.manager_id = b.employee_id --self join
and a.department_id = c.department_id --equi join
and a.job_id = d.job_id --equi join
and b.emp_name = 'Steven King'
order by employee_id
;





select * from employees;
select * from departments;
select * from jobs;







