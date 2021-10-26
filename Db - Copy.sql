
create database student_portfoliofinal;
use student_portfoliofinal;
-- The Below Code will convert the entire database to UTF-8 encoding. :
ALTER DATABASE student_portfoliofinal CHARACTER SET utf8 COLLATE utf8_unicode_ci;

/*1*/create table user
(
id int unsigned not null auto_increment,
university_id varchar(20) not null unique,
password varchar(20),
name varchar(50) default 'User',
photo varchar(100),
email_id varchar(50),
phone varchar(50),
active varchar(3) default 'YES',
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id,university_id)
);
insert into user(university_id,password,name,photo,email_id,phone) values('161500100','12345','Akshay Kumar Katiha',LOAD_FILE('E:\download.jpg'),'akshay.katiha_cs16@gla.ac.in',9876543210);
insert into user(university_id,password,name,photo,email_id,phone) values('161500101','23456','Vivek Kumar',LOAD_FILE('E:\download1.jpg'),'vivek.kumar_cs16@gla.ac.in',9753186420);
insert into user(university_id,password,name,photo,email_id,phone) values('161500102','34567','Akrati Chaturvedi',LOAD_FILE('E:\download2.jpg'),'akrati.chaturvedi_cs16@gla.ac.in',1234567890);
insert into user(university_id,password,name,photo,email_id,phone) values('161400103','45678','Raghav Agravel',LOAD_FILE('E:\download3.jpg'),'raghav.agravel_cs16@gla.ac.in',1236987450);
insert into user(university_id,password,name,photo,email_id,phone) values('151500054','56789','Raghav Sharma',LOAD_FILE('E:\download4.jpg'),'raghav_cs16@gla.ac.in',9874563210);
insert into user(university_id,password,name,photo,email_id,phone) values('151600084','67890','Ravi Vyas',LOAD_FILE('E:\download5.jpg'),'ravi_cs16@gla.ac.in',9512376408);
insert into user(university_id,password,name,photo,email_id,phone) values('171300059','11111','Devesh Sharma',LOAD_FILE('E:\download6.jpg'),'devesh.sharma_cs16@gla.ac.in',9112233456);
insert into user(university_id,password,name,photo,email_id,phone) values('141400011','22222','Harshit Kumar',LOAD_File('E:\download7.jpg'),'harshit.kumar_cs16@gla.ac.in',5589635490);
insert into user(university_id,password,name,photo,email_id,phone) values('141500020','33333','Harshita Verma',LOAD_File('E:\download8.jpg'),'harshita.verma_cs16@gla.ac.in',1234560258);
insert into user(university_id,password,name,photo,email_id,phone) values('171600054','44444','Hritik Tiwari',LOAD_File('E:\download9.jpg'),'hritik.tiwari_cs16@gla.ac.in',8549687561);
insert into user(university_id,password,name,photo,email_id,phone) values('161500060','55555','Jitendra Mittal',LOAD_File('E:\download10.jpg'),'jitendramittal@gmail.com',2584698753);
insert into user(university_id,password,name,photo,email_id,phone) values('141500089','85497','Kavita Singh',LOAD_File('E:\download11.jpg'),'kavitasingh@gmail.com',5589746512);
insert into user(university_id,password,name,photo,email_id,phone) values('151500012','99999','Mansi Bhatt',LOAD_File('E:\download.jpg'),'mansi.bhatt_cs16@gla.ac.in',9856741230);
insert into user(university_id,password,name,photo,email_id,phone) values('121400036','22569','Kuldeep Singh',LOAD_File('E:\download.jpg'),'kuldeepsingh_cs16@gla.ac.in',6879456123);
insert into user(university_id,password,name,photo,email_id,phone) values('161300111','00156','Kavyansh',LOAD_File('E:\download.jpg'),'kavyansh_cs16@gla.ac.in',9632587410);
insert into user(university_id,password,name,photo,email_id,phone) values('1615qw','12345','piyush sir',LOAD_File('E:\download.jpg'),'piyush_cs16@gla.ac.in',9632587410);

/*2*/create table role
(
id int unsigned not null auto_increment,
role varchar(20) not null default 'NOT ASSIGNED',
unique (role),
creation_timestamp datetime default CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
insert into role (role) values('Admin');
insert into role (role) values('Moderator');
insert into role (role) values('Student');

/*3*/create table user_role
(
id int unsigned not null auto_increment,
user_id int unsigned not null,
role_id int unsigned not null,
creation_timestamp datetime default CURRENT_TIMESTAMP ,
primary key(id),
FOREIGN KEY (user_id) REFERENCES user (id),
FOREIGN KEY (role_id) REFERENCES role (id)
);
insert into user_role (user_id,role_id) values(1,3);
insert into user_role (user_id,role_id) values(2,2);
insert into user_role (user_id,role_id) values(3,1);
insert into user_role (user_id,role_id) values(4,3);
insert into user_role (user_id,role_id) values(5,2);
insert into user_role (user_id,role_id) values(6,1);

/*4*/create table qualification
(
id int unsigned not null auto_increment,
qualification varchar(100),
unique (qualification),
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)
);
insert into qualification (qualification) values('10th');
insert into qualification (qualification) values('12th');
insert into qualification (qualification) values('UG');
insert into qualification (qualification) values('PG');

/*5*/create table course
(
id int unsigned auto_increment,
course_name varchar(100) not null unique,
qualification_id int unsigned not null,
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id),
foreign key (qualification_id) references qualification (id)
);
insert into course (course_name,qualification_id) values('B.Tech',3);
insert into course (course_name,qualification_id) values('BBA',3);
insert into course (course_name,qualification_id) values('BCA',3);
insert into course (course_name,qualification_id) values('B.Com',3);
insert into course (course_name,qualification_id) values('B.Pharma',3);
insert into course (course_name,qualification_id) values('B.Sc',3);
insert into course (course_name,qualification_id) values('B.Ed',3);
insert into course (course_name,qualification_id) values('Diploma',3);
insert into course (course_name,qualification_id) values('BA',3);
insert into course (course_name,qualification_id) values('D.Pharma',3);
insert into course (course_name,qualification_id) values('M.Tech',4);
insert into course (course_name,qualification_id) values('MBA',4);
insert into course (course_name,qualification_id) values('MCA',4);
insert into course (course_name,qualification_id) values('MSC',4);
insert into course (course_name,qualification_id) values('M.Pharma',4);
insert into course (course_name,qualification_id) values('MA',4);
insert into course(course_name,qualification_id) values('Applied Science and Humanities',3);

/*6*/create table department
(
id int unsigned auto_increment,
department_name varchar(100) not null unique,
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)
);
insert into department(department_name) values('Civil Engineering');
insert into department(department_name) values('Electrical Engineering');
insert into department(department_name) values('Mechanical Engineering');
insert into department(department_name) values('Electronics and Communication Engineering');
insert into department(department_name) values('Electrical and Electronics Engineering');
insert into department(department_name) values('Computer Science and Engineering');
insert into department(department_name) values('Cloud Computing and Virtualization');
insert into department(department_name) values('Data Analytics');
insert into department(department_name) values('Cyber Security and Forensics');
insert into department(department_name) values('Engineering in Information s_name');
insert into department(department_name) values('Mathematics');
insert into department(department_name) values('Physics');
insert into department(department_name) values('Chemistry');
insert into department(department_name) values('English');
insert into department(department_name) values('Social Science');
insert into department(department_name) values('Chemical Engg.');
insert into department(department_name) values('Pharmacy');
insert into department(department_name) values('Biotech');
insert into department(department_name) values('Global Accounting in association with CIMA');
insert into department(department_name) values('Logistic and Supply Chain Management');
insert into department(department_name) values('Family Business');
insert into department(department_name) values('Financial Markets and Banking');
insert into department(department_name) values('Economics');
insert into department(department_name) values('Microbiology and Immunology');
insert into department(department_name) values('Pharmology');
insert into department(department_name) values('Pharmaceutics');
insert into department(department_name) values('Pharmaceutical Chemistry');
insert into department(department_name) values('Humanities and Science');
insert into department(department_name) values('LLB');
insert into department(department_name) values('Hons.');
insert into department(department_name) values('Applied Physics');

/*7*/create table course_department
(
id int unsigned not null auto_increment,
course_id int unsigned not null,
department_id int unsigned not null,
creation_timestamp datetime default current_timestamp,
primary key(id),
foreign key (course_id) references course (id),
foreign key (department_id) references department (id)
);
insert into course_department(course_id,department_id) values (1,1);
insert into course_department(course_id,department_id) values (1,2);
insert into course_department(course_id,department_id) values (1,3);
insert into course_department(course_id,department_id) values (1,4);
insert into course_department(course_id,department_id) values (1,5);
insert into course_department(course_id,department_id) values (1,6);
insert into course_department(course_id,department_id) values (1,7);
insert into course_department(course_id,department_id) values (1,8);
insert into course_department(course_id,department_id) values (1,9);
insert into course_department(course_id,department_id) values (1,10);
insert into course_department(course_id,department_id) values (11,1);
insert into course_department(course_id,department_id) values (11,2);
insert into course_department(course_id,department_id) values (11,3);
insert into course_department(course_id,department_id) values (11,4);
insert into course_department(course_id,department_id) values (11,5);
insert into course_department(course_id,department_id) values (11,6);
insert into course_department(course_id,department_id) values (11,7);
insert into course_department(course_id,department_id) values (11,8);
insert into course_department(course_id,department_id) values (18,11);
insert into course_department(course_id,department_id) values (18,12);
insert into course_department(course_id,department_id) values (18,13);
insert into course_department(course_id,department_id) values (18,14);
insert into course_department(course_id,department_id) values (18,15);
insert into course_department(course_id,department_id) values (8,1);
insert into course_department(course_id,department_id) values (8,2);
insert into course_department(course_id,department_id) values (8,3);
insert into course_department(course_id,department_id) values (8,4);
insert into course_department(course_id,department_id) values (8,6);
insert into course_department(course_id,department_id) values (8,16);
insert into course_department(course_id,department_id) values (8,17);
insert into course_department(course_id,department_id) values (12,20);
insert into course_department(course_id,department_id) values (12,21);
insert into course_department(course_id,department_id) values (12,22);
insert into course_department(course_id,department_id) values (14,18);
insert into course_department(course_id,department_id) values (14,24);
insert into course_department(course_id,department_id) values (14,13);
insert into course_department(course_id,department_id) values (14,31);
insert into course_department(course_id,department_id) values (15,25);
insert into course_department(course_id,department_id) values (15,26);
insert into course_department(course_id,department_id) values (15,27);


/*8*/create table user_qualification
(
id int unsigned not null auto_increment,
user_id int unsigned not null,
qualification_id int unsigned,
course_id int unsigned,
department_id int unsigned,
report_card varchar(100),
passing_year varchar(50),
board varchar(50),
percentage varchar(50),
verified varchar(3) default 'NO',
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id),
FOREIGN KEY (user_id) REFERENCES user (id),
FOREIGN KEY (qualification_id) REFERENCES qualification (id),
FOREIGN KEY (course_id) REFERENCES course (id),
FOREIGN KEY (department_id) REFERENCES department (id)
);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(1,1,2013,'C.B.S.E.',90.2);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(1,2,2015,'C.B.S.E.',84.8);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(1,3,1,6,2020,'Gla University,Mathura',85.68);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(2,1,2014,'C.B.S.E.',95);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(2,2,2016,'C.B.S.E.',80.8);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(2,3,1,6,2020,'Gla University,Mathura',92);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(3,1,2014,'C.B.S.E.',95.2);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(3,2,2016,'C.B.S.E.',84.8);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(3,3,1,6,2020,'Gla University,Mathura',95.58);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(4,1,2015,'C.B.S.E.',98.2);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(4,2,2017,'C.B.S.E.',88.8);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(4,3,1,7,2020,'Gla University,Mathura',96.77);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(5,1,2014,'C.B.S.E.',97.2);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(5,2,2016,'C.B.S.E.',94.8);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(5,3,1,8,2020,'Gla University,Mathura',98.36);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(6,1,2012,'C.B.S.E.',98.2);
insert into user_qualification(user_id,qualification_id,passing_year,board,percentage) values(6,2,2014,'C.B.S.E.',99.8);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(6,3,1,8,2020,'Gla University,Mathura',90.33);
insert into user_qualification(user_id,qualification_id,course_id,department_id,passing_year,board,percentage) values(6,4,11,7,2022,'Gla University,Mathura',85.99);

/*9*/
create table skill
(
id int unsigned not null auto_increment,
skill_type varchar(50),
skill_name varchar(50),
skill_image varchar(100) default null,
unique (skill_name),
creation_timestamp datetime default CURRENT_TIMESTAMP ,
primary key(id)
);
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','C','/static/images/skills/c.png');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','C++','/static/images/skills/c++.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','JAVA','/static/images/skills/java.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','Python');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','C#','/static/images/skills/c#.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','PHP','/static/images/skills/php.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','R');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','BASIS');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','HTML','/static/images/skills/html.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','Visual Basic','/static/images/skills/vb.png');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','CSS','/static/images/skills/css.png');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','SQL');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','PL/SQL');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','XML');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','Ruby');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','Perl');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','UML');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','Pascal');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','.Net');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','Kotlin','/static/images/skills/kotlin.png');
insert into skill(skill_type,skill_name,skill_image) values ('Programming Language','JavaScript','/static/images/skills/javascript.png');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','ARDUINO','/static/images/skills/ardino.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','RASPBERRYPI','/static/images/skills/raspberrypi.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','AUTOCAD');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','CAD');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','ANSYS');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','R STUDIO');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','Adobe Photoshop');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','CIVIL 3D');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','JS Bin');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','MATHCAD');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','VISUAL STUDIO');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','Liquid XML Studio');
insert into skill(skill_type,skill_name,skill_image) values ('Hardware and Software','ECLIPS');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Computer Networking and Internet Protocols');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Cyber Security','/static/images/skills/cyber security.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Database Management System');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Software engineering');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Website Design');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Website Development');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Deep Learning');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Big Data');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Computer Architecture');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Cloud Computing','/static/images/skills/cloud-computing.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Data Analytics');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Machine Learning','/static/images/skills/machine learning.png');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Artificial Intelligence');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Data Mining','/static/images/skills/data mining.png');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Data Science');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Mobile Applications');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Internet of Things','/static/images/skills/iot.jpg');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Microprocessor');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Blockchain Architecture');
insert into skill(skill_type,skill_name,skill_image) values ('Technology','Digital Image Processing');
insert into skill (skill_type,skill_name,skill_image) values('Management','Logistic Management');
insert into skill (skill_type,skill_name,skill_image) values('Management','Marketing');
insert into skill (skill_type,skill_name,skill_image) values('Management','Human Resource Development');
insert into skill (skill_type,skill_name,skill_image) values('Management','Finance');
insert into skill (skill_type,skill_name,skill_image) values('Management','Infromation System');
insert into skill (skill_type,skill_name,skill_image) values('Management','Consulting');
insert into skill (skill_type,skill_name,skill_image) values('Management','Entrepreneurship');
insert into skill (skill_type,skill_name,skill_image) values('Management','Supply Chain Management');
insert into skill (skill_type,skill_name,skill_image) values('Management','Leadership');
insert into skill (skill_type,skill_name,skill_image) values('Management','Economic Growth and Development');
insert into skill (skill_type,skill_name,skill_image) values('Management','Innovation');
insert into skill (skill_type,skill_name,skill_image) values('Management','Business Models');
insert into skill (skill_type,skill_name,skill_image) values('Management','Simulation of Business System');
insert into skill (skill_type,skill_name,skill_image) values('Management','Sustainability through Green Manufacturing System');
insert into skill (skill_type,skill_name,skill_image) values('Management','Total Quality Management');
insert into skill (skill_type,skill_name,skill_image) values('Management','Microeconomics');
insert into skill (skill_type,skill_name,skill_image) values('Management','Engineering Economics');
insert into skill (skill_type,skill_name,skill_image) values('Management','Project management for managers');
insert into skill (skill_type,skill_name,skill_image) values('Management','E-Business');
insert into skill (skill_type,skill_name,skill_image) values('Management','Capital Management');
insert into skill (skill_type,skill_name,skill_image) values('Management','Management of Inventory Systems');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Community pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Hospital pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Clinical pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Industrial pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Regulatory pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Home care pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Managed care pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Research pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Oncology pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Ambulatory care pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Compounding pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Consultant pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Internet pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Veterinary pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Nuclear pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Military pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Specialty pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Geriatric pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Psychopharmacs_nameapy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Personal pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Nutritional support pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Hospice pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Pediatric pharmacy');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Pharmacy benefit manager');
insert into skill (skill_type,skill_name,skill_image) values ('Bio Science','Poison control pharmacy');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Archeaology');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','History');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Law');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Politics');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Literature');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Religion');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Philosophy');
insert into skill(skill_type,skill_name,skill_image) values ('Art and Humanities','Linguistics');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Intellectual Property');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Culture studies');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Soft skills');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Educational Leadership');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Development of Soclology');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Visual perception');
insert into skill(skill_type,skill_name,skill_image) values('Art and Humanities','Tranformation and Lives');
insert into skill(skill_type,skill_name,skill_image) values('Game','Cricket','/static/images/skills/cricket.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Volleyball');
insert into skill(skill_type,skill_name,skill_image) values('Game','Basketball','/static/images/skills/basketball.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Chess','/static/images/skills/chess.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Swimming');
insert into skill(skill_type,skill_name,skill_image) values('Game','Cycling');
insert into skill(skill_type,skill_name,skill_image) values('Game','Hockey');
insert into skill(skill_type,skill_name,skill_image) values('Game','Badminton');
insert into skill(skill_type,skill_name,skill_image) values('Game','Tennis');
insert into skill(skill_type,skill_name,skill_image) values('Game','Table Tennis');
insert into skill(skill_type,skill_name,skill_image) values('Game','Wrestling');
insert into skill(skill_type,skill_name,skill_image) values('Game','Football','/static/images/skills/football.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Boxing','/static/images/skills/boxing.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Golf','/static/images/skills/golf.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Archery');
insert into skill(skill_type,skill_name,skill_image) values('Game','Athletics','/static/images/skills/athletes.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Game','Gymnastics');
insert into skill(skill_type,skill_name,skill_image) values('Game','Handball');
insert into skill(skill_type,skill_name,skill_image) values('Game','Kabaddi');
insert into skill(skill_type,skill_name,skill_image) values('Game','Throwball');
insert into skill(skill_type,skill_name,skill_image) values('Game','Weightlifting');
insert into skill(skill_type,skill_name,skill_image) values('Game','Karate');
insert into skill(skill_type,skill_name,skill_image) values('Game','Kho-kho');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Painting');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Dancing','/static/images/skills/dance.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Photography');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Singing','/static/images/skills/singing.jpg');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Acting');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Writing');
insert into skill(skill_type,skill_name,skill_image) values('Artist','Crafting');



/*10*/create table user_skill
(
id int unsigned not null auto_increment primary key,
user_id int unsigned not null,
skill_type_id int unsigned not null,
certificate varchar(100),
verified varchar(3) default 'NO',
creation_timestamp datetime default CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES user (id),
FOREIGN KEY (skill_type_id) REFERENCES skill(id)
);
 
insert into user_skill(user_id,skill_type_id) values(1,1);
insert into user_skill(user_id,skill_type_id) values(1,5);
insert into user_skill(user_id,skill_type_id) values(1,24);
insert into user_skill(user_id,skill_type_id) values(1,115);
insert into user_skill(user_id,skill_type_id) values(2,1);
insert into user_skill(user_id,skill_type_id) values(2,5);
insert into user_skill(user_id,skill_type_id) values(4,12);
insert into user_skill(user_id,skill_type_id) values(4,8);
insert into user_skill(user_id,skill_type_id) values(5,16);
insert into user_skill(user_id,skill_type_id) values(6,3);
insert into user_skill(user_id,skill_type_id) values(6,12);
insert into user_skill(user_id,skill_type_id) values(6,8);
insert into user_skill(user_id,skill_type_id) values(7,12);
insert into user_skill(user_id,skill_type_id) values(8,12);
insert into user_skill(user_id,skill_type_id) values(8,8);
insert into user_skill(user_id,skill_type_id) values(9,8);
insert into user_skill(user_id,skill_type_id) values(3,12);
insert into user_skill(user_id,skill_type_id) values(3,1);
insert into user_skill(user_id,skill_type_id) values(12,3);
insert into user_skill(user_id,skill_type_id) values(13,16);
insert into user_skill(user_id,skill_type_id) values(14,19);
insert into user_skill(user_id,skill_type_id) values(15,5);

show tables;
select * from user;
select * from role;
select * from user_role;
select * from qualification;
select * from course;
select * from department;
select * from course_department;
select * from user_qualification;
select * from skill;
select * from user_skill;