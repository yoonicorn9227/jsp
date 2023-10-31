--부서명 최대연봉과, 최소연봉, 평균연봉 출력
select max(salary), min(salary)
from employees
;
--부서별 부서번호 최대연봉과, 최소연봉, 평균연봉 출력 (having 함수사용)
--평균 부서별 연봉이 5000이상이 부서만 출력하시오 and 부서번호 50이상으로만 출력하시오.
select department_id, max(salary), min(salary), round(avg(salary),2) as stu_avg
from employees
where department_id>=50
group by department_id
having avg(salary)>5000
order by department_id
;

select * from employees;

desc departments;


select * from departments;
 
select employee_id,emp_name,employees.department_id,department_name, departments.manager_id,departments.create_date 
from employees, departments
where employees.department_id = departments.department_id --join 방법
;


select employee_id,emp_name,employees.department_id,department_name 
from employees, departments
where employees.department_id = departments.department_id --join 방법
;



select * from employees; --107
select * from departments; --27
select * from employees,departments; --107*27=2889개

--cross join 의 4개의join 종류
--equi join : 가장많이 사용하는 조인방법

--equi join : 공통의 컬럼을 가지고 검색하는 것.
select employees.department_id, department_name
from employees, departments
where employees.department_id = departments.department_id
;

--별칭사용해서 equi join
select e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id
;


select* from jobs;
select*from employees;


--employees에 있는 사원번호 사원이름, 직급, 직급의 최대월급과 최소월급을 출력하시오.(equi join)
select employee_id, emp_name, a.job_id,max_salary,min_salary
from employees a, jobs b
where a.job_id=b.job_id -- equi join
;


select * from stuscore;
select * from mem;



-----
create table stuinfo (
	stunum number(4),
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

------
select*from stuinfo;

select*from stuscore;

--이름 업데이트 
update stuscore a 
set a.name = (select b.name from stuinfo b where a.stunum=b.stunum)
;

commit;


----
create table stuscore (
	stunum number,
	kor number,
	eng number,
	math number,
	total number,
	avg number,
	rank number
);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (1, 90, 69, 90, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (2, 65, 83, 91, 239, 79.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (3, 64, 91, 94, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (4, 73, 72, 62, 207, 69, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (5, 51, 80, 64, 195, 65, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (6, 90, 57, 91, 238, 79.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (7, 50, 63, 52, 165, 55, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (8, 77, 98, 82, 257, 85.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (9, 94, 58, 92, 244, 81.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (10, 55, 76, 66, 197, 65.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (11, 79, 54, 94, 227, 75.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (12, 89, 61, 75, 225, 75, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (13, 79, 93, 100, 272, 90.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (14, 86, 75, 53, 214, 71.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (15, 66, 73, 50, 189, 63, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (16, 73, 69, 55, 197, 65.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (17, 82, 50, 62, 194, 64.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (18, 86, 87, 87, 260, 86.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (19, 99, 75, 63, 237, 79, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (20, 86, 74, 73, 233, 77.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (21, 61, 55, 53, 169, 56.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (22, 70, 50, 51, 171, 57, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (23, 70, 94, 82, 246, 82, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (24, 59, 83, 71, 213, 71, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (25, 99, 52, 92, 243, 81, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (26, 83, 55, 94, 232, 77.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (27, 87, 78, 80, 245, 81.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (28, 66, 58, 61, 185, 61.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (29, 76, 51, 99, 226, 75.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (30, 84, 77, 50, 211, 70.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (31, 72, 92, 97, 261, 87, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (32, 64, 91, 66, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (33, 50, 69, 56, 175, 58.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (34, 90, 84, 81, 255, 85, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (35, 97, 75, 64, 236, 78.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (36, 96, 93, 76, 265, 88.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (37, 54, 73, 50, 177, 59, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (38, 56, 77, 95, 228, 76, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (39, 63, 91, 56, 210, 70, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (40, 54, 80, 97, 231, 77, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (41, 58, 80, 51, 189, 63, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (42, 96, 56, 72, 224, 74.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (43, 77, 79, 69, 225, 75, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (44, 81, 64, 55, 200, 66.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (45, 76, 68, 71, 215, 71.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (46, 58, 57, 84, 199, 66.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (47, 50, 71, 70, 191, 63.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (48, 57, 68, 55, 180, 60, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (49, 90, 70, 74, 234, 78, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (50, 100, 92, 62, 254, 84.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (51, 82, 79, 57, 218, 72.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (52, 55, 50, 57, 162, 54, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (53, 60, 76, 85, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (54, 70, 79, 72, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (55, 71, 77, 94, 242, 80.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (56, 91, 96, 50, 237, 79, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (57, 89, 61, 94, 244, 81.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (58, 59, 79, 71, 209, 69.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (59, 92, 70, 76, 238, 79.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (60, 71, 58, 94, 223, 74.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (61, 98, 68, 81, 247, 82.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (62, 68, 84, 97, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (63, 81, 71, 89, 241, 80.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (64, 51, 72, 60, 183, 61, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (65, 84, 74, 74, 232, 77.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (66, 90, 89, 96, 275, 91.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (67, 63, 55, 85, 203, 67.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (68, 68, 93, 53, 214, 71.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (69, 57, 73, 100, 230, 76.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (70, 52, 95, 81, 228, 76, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (71, 89, 59, 78, 226, 75.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (72, 73, 61, 71, 205, 68.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (73, 90, 94, 96, 280, 93.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (74, 69, 56, 91, 216, 72, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (75, 62, 96, 65, 223, 74.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (76, 63, 62, 66, 191, 63.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (77, 91, 68, 62, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (78, 96, 84, 61, 241, 80.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (79, 78, 94, 50, 222, 74, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (80, 95, 59, 57, 211, 70.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (81, 55, 88, 69, 212, 70.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (82, 93, 78, 76, 247, 82.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (83, 78, 79, 57, 214, 71.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (84, 50, 95, 89, 234, 78, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (85, 91, 62, 75, 228, 76, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (86, 65, 54, 91, 210, 70, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (87, 91, 54, 92, 237, 79, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (88, 76, 76, 87, 239, 79.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (89, 83, 100, 65, 248, 82.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (90, 52, 52, 74, 178, 59.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (91, 88, 90, 71, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (92, 89, 92, 75, 256, 85.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (93, 57, 85, 80, 222, 74, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (94, 64, 96, 74, 234, 78, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (95, 57, 53, 64, 174, 58, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (96, 84, 61, 93, 238, 79.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (97, 84, 87, 85, 256, 85.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (98, 97, 85, 83, 265, 88.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (99, 51, 69, 72, 192, 64, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (100, 77, 64, 92, 233, 77.6666666667, 0);


commit;

----
select*from stuscore;

desc stuinfo;


select a.stunum,name,grade,total,avg,rank
from stuinfo a, stuscore b
where a.stunum = b.stunum
;

--[관계형 DB : join]
--학생정보
desc member;
desc stuscore;

create table stuInfo(
stunum number(4), 
name varchar2(30),
major varchar2(30),
phone varchar2(30),
address varchar2(30),
grade varchar2(30),
kor number(3),
eng number(3),
math number(3),
total number(3),
avg number(5,2),
rank number(10)
);

















