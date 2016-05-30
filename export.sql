--------------------------------------------------------
--  File created - Monday-May-30-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GRADES
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."GRADES" 
   (	"IDGRAD" NUMBER, 
	"NUMEGRAD" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOBBY
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."HOBBY" 
   (	"IDHOBBY" NUMBER, 
	"HOBBYNAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(1500 BYTE), 
	"APPROVED" NUMBER, 
	"videoURL" VARCHAR2(1500 BYTE), 
	"IMAGEURL" VARCHAR2(1500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOBBYPOST
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."HOBBYPOST" 
   (	"IDPOST" NUMBER DEFAULT 0, 
	"IDHOBBY" NUMBER, 
	"IDUSER" NUMBER, 
	"MESSAGE" VARCHAR2(500 BYTE), 
	"DATE_OF_POST" DATE DEFAULT current_date
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NUMEFAMSG
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."NUMEFAMSG" 
   (	"NF" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NUMESG
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."NUMESG" 
   (	"N" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERHOBBY
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."USERHOBBY" 
   (	"IDUSER" NUMBER, 
	"IDHOBBY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERSOHO
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."USERSOHO" 
   (	"IDUSER" NUMBER DEFAULT 0, 
	"NAMEUSER" VARCHAR2(20 BYTE), 
	"SURNAMEUSER" VARCHAR2(30 BYTE), 
	"DATE_OF_BIRTH" DATE, 
	"EMAIL" VARCHAR2(60 BYTE), 
	"IDGRAD" NUMBER DEFAULT 2, 
	"AUTHTOKEN" VARCHAR2(1024 BYTE), 
	"AUTHSITE" VARCHAR2(20 BYTE), 
	"PHOTOURL" VARCHAR2(1024 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CIPRIAN.GRADES
SET DEFINE OFF;
REM INSERTING into CIPRIAN.HOBBY
SET DEFINE OFF;
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (1,'Fotbal','Fotbalul este un sport de echipã ce se disputã între douã echipe alcãtuite din 11 jucãtori fiecare. La începutul secolului al XXI-lea era jucat de peste 250 de milioane de jucãtori în peste 200 de ?ãri, ceea ce îl face cel mai popular sport din lume',1,'https://www.youtube.com/embed/-NSvbGxzpKk','http://bucurestifm.ro/wp-content/uploads/sites/2/2015/09/fotbal-2.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (2,'Box','Boxul (sau pugilismul) este un sport mar?ial strãvechi (probabil cel mai vechi sport mar?ial, cu origini preistorice), în care doi concuren?i, cu greutã?i similare, luptã cu ajutorul pumnilor, într-o serie de reprize, numite runde. Victoria este ob?inutã in urma punctelor date pentru lovituri de catre juriu, sau atunci când adversarul este doborât la pâmânt ?i nu reu?e?te sã se ridice înainte ca arbitrul sã termine de numãrat pânã la 10, (englezã Knockout sau KO) sau când adversarul este prea rãnit pentru a continua (englezã Technical Knockout sau TKO).',1,'https://www.youtube.com/embed/humDRT29mAM','http://www.beyondsports.ro/img/box1.gif');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (3,'Inot','Înotul este o mi?care de deplasare a oamenilor sau a animalelor prin apã, de obicei fãrã niciun fel de asisten?ã artificialã. Tipurile sau stilurile de înot sunt craul, bras, fluture sau spate, dar ?i anumite derivate ale acestora, de exemplu bras lung, spate dublu etc.',1,'https://www.youtube.com/embed/GxlFhK817R8','http://www.ancada.com/_Files/News/Attachments/2011/10/25/inot-95965.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (4,'Baschet','Baschetul este unul dintre cele mai rãspândite sporturi de echipã din lume; se caracterizeazã prin fine?ea, precizia ?i fantezia exerci?iilor tehnice ?i tactice, prin talia înaltã ?i calitã?ile fizice deosebite ale sportivilor, toate acestea implicate într-o luptã sportivã care pretinde spirit de echipã ?i de sacrificiu, inteligen?ã ?i rezisten?ã nervoasã.',1,'https://www.youtube.com/embed/J8sWBdHJB2M','http://blog.cursuribaschet.ro/wp-content/uploads/2014/12/baschet-generic-03-500x300-1748x984.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (5,'Tenis','Tenisul este un sport jucat fie între doi jucãtori (simplu), fie între douã echipe a câte doi jucãtori (dublu). Jucãtorii folosesc o rachetã pe bazã de racordaj pentru a lovi o minge de cauciuc acoperitã cu pâslã peste fileu, mingea trebuind sã ajungã în terenul adversarului.',1,'https://www.youtube.com/embed/lMinfVMfH9k','http://bucurestifm.ro/wp-content/uploads/sites/2/2014/11/Tenis.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (6,'Pescuit','Pescuitul este activitatea de a prinde cu ajutorul unor instrumente speciale diverse varietã?i de pe?te sau alte vietã?i acvatice. Pescuitul mai poate fi considerat ca o extrac?ie a organismelor acvatice, din mediul în care au crescut, cu diverse scopuri, precum alimentare, recreere (pescuit sportiv), ornamentare (captura speciilor ornamentale) sau ?eluri industriale.',1,null,null);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (7,'Dans','Dansul este un mijloc artistic de exprimare a unui mesaj printr-o succesiune de mi?cãri ritmice, variate ?i expresive ale corpului, executate în ritmul muzicii, având caracter religios, de artã sau de divertisment.',1,null,null);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (8,'Muzica','Muzica (din gr. mousik?) este arta combinãrii notelor în succesiune ?i simultan într-o formã plãcutã estetic, organizarea ritmicã a acestor note ?i integrarea lor într-o lucrare completã.',1,null,null);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (9,'Bucatarie','Bucãtãria reprezintã arta ?i tehnica preparãrii alimentelor destinate consumului uman. Bucãtãria poate cuprinde toate no?iunile practice referitoare la ingrediente, prepararea lor, instrumentele folosite, modurile de gãtit ?i diferen?ele între acestea. Este asociatã artei mesei ?i gastronomiei.',1,null,null);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (10,'Gradinarit','Grãdinãritul reprezintã activitatea de cultivare a unor plante ornamentale sau nu în spa?ii special amenajate (grãdini). Grãdinãritul poate fi realizat de amatori sau grãdinari profesioni?ti.',1,null,null);
REM INSERTING into CIPRIAN.HOBBYPOST
SET DEFINE OFF;
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (1,1,1343923862291333,'Ciprian',to_date('01-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (7,1,1343923862291333,'Tocmai ce am postat
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (2,1,1343923862291333,'A doua postare',to_date('02-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (3,2,1343923862291333,'A treia postare',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (6,2,1343923862291333,'Postare de acum',to_date('21-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (4,2,1155743477821938,'Sunt Maria',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (5,2,1628126750843339,'Sunt mama lui Ciprian',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (8,1,1343923862291333,'Ciprian testeaza postarile
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (9,2,1628126750843339,'Ana are mere
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (10,2,1628126750843339,'Voie pleaca acasa
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (11,2,1628126750843339,'Alo alo
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (12,1,1343923862291333,null,to_date('30-MAY-16','DD-MON-RR'));
REM INSERTING into CIPRIAN.NUMEFAMSG
SET DEFINE OFF;
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iereminciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ierghie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ierima');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ierimia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ierina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iernean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iernutan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ierulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ierunca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iesan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iesanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieseanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ietcu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieva');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ievuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ievuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeante');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeantea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jebelean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jebeleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jebelian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeberean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jebereanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeberian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeberneac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jebetean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jebeten');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jecan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jechereanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jechianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jechil');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jechiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jecu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jefcovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeflea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jega');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jegan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jegu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jehaliuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeican');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jejeran');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jejerean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelchici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelecuteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeledintan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeledintean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeler');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeleri');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeleriu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeleru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelesneac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelmarean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelmareanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jelnean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jemna');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jemnea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jenar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jenaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jencarau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jenei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jente');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jentimur');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jepan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jepelea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jepu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerbas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jercalau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jercan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jercu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jercut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerdea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerdeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerdianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jere');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerebie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerechi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeredea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jereghie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeristeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerlaianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerloeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jernea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jerpelea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jetea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Jeverdan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Keseru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kilcos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kirculescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kiriac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kiriacescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kiricuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kirita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kiritescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kirsner');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kitescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kitu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kivu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kogalniceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Komlosi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kosat');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kovaci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kretulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Kretzulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liahu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Libar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Libearca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Libertatu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Libirta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Libiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Libotean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Librescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licaciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licalcezar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lican');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licaret');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licarete');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licareti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liche');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lichentanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licher');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lichi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lichiardopol');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lichiniuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lichinteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lichiuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liciai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licinschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licsandroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licsandru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licsoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licsor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liculescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licuriceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licurici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Licuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lida');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lidian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lidichiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lieanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lifei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lificiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liftan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lifticariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lifu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ligescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lighezan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lighezean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ligiana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ligotchi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihaceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihat');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihatchi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihet');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihoni');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Lihor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Liiceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Macaneata');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Macinic');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mainea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mainescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Malaieru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Malanm');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manascurta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mancas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mancu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandaianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandra');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandra');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandras');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandreci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandres');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandresi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandresti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandric');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandricel');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandris');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandristeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandroane');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandroc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrosca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandroviceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrucencu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandruleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrusca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandruta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mandrutescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manduc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Maneca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manecan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Maner');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manicaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Maniosu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manja');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manjescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mantescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mantuleasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Mantulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Manz');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neab');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neaca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacsa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacsea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacsi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacsiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacsoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacsu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neacu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neag');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neaga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neaga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neaghina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagoe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagoie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagota');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagra');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neague');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagui');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neagul');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neamt');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neamti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neamtiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neamtu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neamu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neamutu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neata');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neata');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neatu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neauna');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nebancea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nebela');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nebelcu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nebi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neboga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neboisa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Neboleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nebru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasaiescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasalean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasaleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasaramba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasatasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasaudean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasaudeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nascan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nascutiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasachi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastase');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastaselu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastasoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastrusnicu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastrut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasturas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasturean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasturel');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasturescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasturica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nastuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasuescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasui');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nasulea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nataguiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nataletu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Natarau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Natuiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Naulea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navacean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navadaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navala');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navalici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navaligu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navarache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navirtu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navligu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navocean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navodaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Navrig');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nazare');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nazarie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nazdravan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Nazdravanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Naznean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obacescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obaciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obada');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obadau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obade');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obadeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obancea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obarsanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obarsie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obeada');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obeada');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obeala');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obedea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obedeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obedenaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oberding');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oberschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obersterescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obersterescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obesterescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obezaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obiala');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obicea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obician');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obideneanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obilescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obilisteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obirsie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oblancescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oblesniuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oblu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obodariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obodaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obodean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oboga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obogeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obogianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oboroc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oborocea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oboroceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Oborocianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrad');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obradovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obratovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obreascu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obredin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obregia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obreja');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obreja');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrejan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obreje');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obret');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrete');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obretin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrijanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obriste');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrocaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrocea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obroceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obrogeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obsitos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Obsitosi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poaca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poalelungi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poama-neagra');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poanta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poarca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poasca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poascalau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poata');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pobereznic');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pobleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poblete');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poboran');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poboranu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocaliuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocanschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pochibreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pochiscan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocicaischi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocioianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pociovalesteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pociovalisteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocitan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pociu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poclid');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poclos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poclusan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocnaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocnet');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocol');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocora');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocorschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocovnic');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocovnicu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocris');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocriser');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocroianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocsai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocsan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocse');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pocsoara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pod');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podarescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podarita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podasca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podcomasnai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pode');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podeasca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podelean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podelniuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podenii');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podereu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podgorean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podgoreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podgurschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podiras');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podiuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podoaba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podoasca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podobea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podocea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podogoreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podolan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podolean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podoleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podoran');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podoreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podosu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podovei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podrea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podurfu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Podut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poeana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poeana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poede');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poenar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poenari');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poenariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poenaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poetelea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pofilan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poftala');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogacean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogaceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogaci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogacias');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogaciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poganescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogangeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogangeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poganu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogava');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogdan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poghirc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogingeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogirneata');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogoe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogolsa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogonaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogoneanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogonici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogoran');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogoreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogurschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Pogurschii');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Poh');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rababoc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rabeca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rabei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rablau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rablou');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rabolu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rabulea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racheleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racheru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rachetes');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rachitovan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racle');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racles');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raclesi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raclis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racliu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racnea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racocea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racolta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racolte');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoltea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racosiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racota');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racotea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racovan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racovanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoveanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racovei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoviceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racovita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racovitan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racoviteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racsa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Racu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rad');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rada');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radamovschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rades');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radicof');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radivoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radnea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rado');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radoan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radocea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radocia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radof');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radoicovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radomir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radomireanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radonici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rados');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radoslavescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radoslovescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radovanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radoveanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radovicescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raducanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raduescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radui');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radulian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Radulovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raevschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafael');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafail');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafaila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafira');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rafiroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raftopol');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raftopolos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ragea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rahnea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rahota');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rahovan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rahovean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rahoveanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raicea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raiciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raicopol');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raicoviceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raicu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raiha');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Railea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rain');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rainea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Raiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Rajac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ralache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ralea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ralescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabadac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabadas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabadis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabados');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabcu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabinevschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabloschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabo');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabou');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sabuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacaci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacaliu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacaliuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacalos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacazof');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacerdoteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sachelari');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sachelarie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sachin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sacota');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saculea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadagurschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadovac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadovan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadoveac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadoveanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadovei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sadovinschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saegiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safalichi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safcencu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safer');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safirescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safriuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Safta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saftei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saftencu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saftiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saftiuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saftu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saghin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sahagia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sahan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saheian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sahia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sahrea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saiceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sainiuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saioc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saiocescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saisuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saiti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saitoc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saitos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saizescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saizu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sajin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sala');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salade');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salahoru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salamagheanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salamon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salanta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salanta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salanti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salantiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salaoru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salari');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salat');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salatan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salcau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salcie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salcu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sale');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salenciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saliche');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salinschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saliu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salmen');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salogean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salomia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salomie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salomiea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salomir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salomiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Salonti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Saltelechi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samachis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samaragiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samargescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samargiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samarjai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sames');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samfir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samfira');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samfirescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samfirisca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samfirisca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samfiroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sami');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samitis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samoil');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samoila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samoilescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samoschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samson');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samsonescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samuel');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samuil');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samuila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Samungi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sanaploianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sancina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sanciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Sanda');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teaca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teaci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teacoe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teacu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teaha');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teanc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teasca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teascu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teban');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tebeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tebeasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tebies');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teburzuca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tec');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecaciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Techirdalian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teclici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecliciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teclu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecoanta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecsa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecsan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecsi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecsoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecucean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecuceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecuci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecucianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teculescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecusanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tecuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tedorescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teflan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teghe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tegla');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tegzes');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teiosanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teisan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teisanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teisean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teiuleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teiusan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teiut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telaspan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telcian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleaba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleaba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleaga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telearca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telec');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telecan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telegan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telegariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telegaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telegeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telegescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleguta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telehoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telejman');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleman');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telembici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telenche');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telenescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleoaca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teles');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telesman');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telespan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teletin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teleuca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Teliban');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telibasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telipan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Telisca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temeian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temelescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temelie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temeloiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temeneanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temenschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temereanca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temes');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temesan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temesi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temisan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temisanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temneanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tempea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Temu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Tencalec');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udangiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udateanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udatu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udisteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udistenu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udistrean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udistreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udistrian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udistrianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udma');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udoba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udovita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udovita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udrea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udres');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udrescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udreste');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udrica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udris');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udriste');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udristeoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udristioiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udroaica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udubasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udubasteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ududec');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ududoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ududoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ududui');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uduleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udurbac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Udvuleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ugarcovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uglea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ugreanasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uncescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uncheselu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unchesu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unchesul');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unchiasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uncianschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unciuleac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unciuleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uncu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Uncuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Undis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Undrea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Undreiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Undrescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungheanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungherea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unghianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungur');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unguras');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungureanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurenasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unguresan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unguroaica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unguroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unguru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unguruianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurus');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ungurusan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unitaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Univarosan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untarescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Unteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untesu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Untu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vadim');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vagia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vagner');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vahani');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vahanii');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vahnovan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vahnovanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vahnovean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vahnoveanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaibar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaicar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaida');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaidahazan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaidas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaidasiean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaidasigan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaideanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaidos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaidsigan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vainer');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaipan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaisingher');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaiti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vaivoda');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vajutiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valacec');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valachi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valah');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valanschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valasciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valchizan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valeca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valenas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valenca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valentic');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valentin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valer');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valerian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valerica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valeriu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valerus');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valet');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valimarescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valnoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valoschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valosin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Valter');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vamas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vames');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vamesu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vamos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vamu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Vamvu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zabulica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zacheia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zacheru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zachia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zachici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zachiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zacopceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zad');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zadacencu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zadughe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zafiescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zafiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zagarschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaghiva');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaglau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zagor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zagrai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zah');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaha');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahalcea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahanagiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahanasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharagiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharcu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahareanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharencu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahari');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahariade');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharias');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahariciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahariea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahariei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharioaia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharioiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahariuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharniciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaharu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahatriuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaheiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaheu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahocea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahorneanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahorte');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahortea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zahu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaicovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaicu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zain');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zainea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zainia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zait');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaiti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaitiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaitu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zala');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zalai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zalavas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaldea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zaliznea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zalomir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zalum');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zalupca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zalutchi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zama');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zama');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamacau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamaneagra');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamaria');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zambila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamferoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamficu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamfiescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamfir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamfira');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamfirache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamfirescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Zamfirii');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anucuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anuichi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anuntoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anusca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anusca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anustei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anutei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anutescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anutoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anzarescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Anziac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aodaitei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aolaritei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aolariti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aoncioaie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aonesti');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aonofriesei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aoproae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aosan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aostacioae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aostacioaie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apachi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apachitei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apadean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apadeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apafaian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apahidean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apahideanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apai');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apalaghie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apalaghiei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apalamaritei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apalimaritei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aparaschive');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aparaschivei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aparece');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aparu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apascaritei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apastinei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apatachioae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apatachioaie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apatean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apateanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apati');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apatie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apatiei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apatrichii');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apavaloae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apavaloaei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apavaloaia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apavaloaie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apavaloaiei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apavaloiae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Aperu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apescaritei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apetean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apetrachiae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Apetrachioae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Babusca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Babusi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacaci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacal');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacalbasa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacalearos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacali');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacalu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bace');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baches');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bachis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacinschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacizu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baclof');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baconschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacosca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacovia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacrau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacria');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacriu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacsin');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacsis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bactau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacula');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bacusca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bad');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badale');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badeaon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badeci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badeon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baderca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badii');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badiiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Badu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Bae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Baearam');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calmatuianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calmau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calmuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calniceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caloiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caltonoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caltun');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calueanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugarasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugareanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugarescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugarici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugarita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugaritoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugaroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calugarul');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calus');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calusaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluser');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluseriu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluseru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caluta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calutiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calutoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calutu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calvarasan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Calvaraseanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camajau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camaras');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarasan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarascu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarascu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarasescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camaruta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarzan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camarzan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camataru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Caministeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camirzan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Campeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camuescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Camui');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Canalas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Cananau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Canarau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Cancean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Cancescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Canciulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Candaluta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Canescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Canicean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedeaga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedeu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dediteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dediu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedulea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dedulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Defta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deftu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Degan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Degau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Degerati');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Degeratu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Degetaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dehelean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deheleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dehenes');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dehuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deiac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dej');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dejan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dejanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dejescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dejeu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dejica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Dejoianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deju');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delamarian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delavrancea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delcarean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delcea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delcescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delcioiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delcu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deleanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delegeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deleliu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deleu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delibas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delican');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delicioiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delihei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deliiorga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deliman');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delinschi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delioran');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deliorga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delisor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delistiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Delitoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deliu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Deloi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enaceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enacescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enacheanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enachescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enachi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enachioae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enachioiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enachita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enacica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enaghe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enaiche');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enascu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enascut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enascuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasel');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasoae');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasoaia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasoaie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasoni');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enastescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasut');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enasuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enatescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encereanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encher');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enchescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enchi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encian');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enciana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encinova');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encioiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enciulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encolescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enculeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encules');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enculescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Enculesei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encuna');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encusor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encutescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encutoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Encutu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Endes');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ene');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Figan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fighie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Figla');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Figlea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Figura');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filaret');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filat');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filaton');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filatu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filcea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filcescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filculescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fildan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fildiroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filiche');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filichi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filigeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filimon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filimonescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filionescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filioreanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filip');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipachi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipeac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipiac');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipiuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipoaia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filipovici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filippi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filis');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filisan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filisanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filisica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filistacheanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filita');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filitas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filiuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filmon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filofi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filoimon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filomon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filon');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filostache');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filote');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Filotie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finichiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finiser');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fintescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fintesteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Finteusan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fintoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fiordean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fiordeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Fir');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geaman');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geamana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geamanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geambasu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geambazu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geambesa');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geamina');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geampalia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanaliu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geancos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geangalau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geangalau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geangos');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geangu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geangus');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanovu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geantau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geauca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geaulea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gebaila');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gebescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geboiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gecan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gechereanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gecui');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gefencu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gegea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gegeran');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gegiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gegiuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gegu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geica');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geicu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geileanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelamanca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelcop');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geleletu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelemanca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelepu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geleriu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geles');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geletu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gelutu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geman');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gemanar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gemanariu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gemanaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gemene');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gemeniuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gemescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genad');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genaru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gencarau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gendauanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gene');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genes');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Geng');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gengea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Gengiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genovu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Genta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hambasianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hambu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hanc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hanca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hancea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hancean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hanceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hancianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hanciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hancu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Handorea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Handorean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hangan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hangu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hantar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hara');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harb');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harbea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harbu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harceaga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harciog');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hardea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harghiligiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hargu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harja');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harja');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjaba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjoaba');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjobescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjoghe');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjoghie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harjoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harla');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harlau');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harlav');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harlea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harlesteanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harlisca');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harnea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harnu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsana');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harseag');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsenie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harseu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsoroiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsoveanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsovescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsovoiu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harsu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hartan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hartescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hartoaga');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hartopan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hartopanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hartopeanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Haruta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Harza');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hatru');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Hatu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iecenia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iederan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iedo');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iedutianu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iefta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieftemie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieftimie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iegar');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iela');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ielcean');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ielceanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ielciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ielescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieli');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienachi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienasescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienasoaie');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienci');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iencia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iencusor');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iencuta');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienea');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienei');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienesel');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieni');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienibace');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienosoi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienovan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienscu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienulescu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienus');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ienutas');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iepan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iepuras');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iepure');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iepureanu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iepuri');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iercan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Iercosan');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremciuc');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremi');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremia');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremias');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremici');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremiciu');
Insert into CIPRIAN.NUMEFAMSG (NF) values ('Ieremie');
REM INSERTING into CIPRIAN.NUMESG
SET DEFINE OFF;
Insert into CIPRIAN.NUMESG (N) values ('Paula');
Insert into CIPRIAN.NUMESG (N) values ('Paulica');
Insert into CIPRIAN.NUMESG (N) values ('Paulina');
Insert into CIPRIAN.NUMESG (N) values ('Patricia');
Insert into CIPRIAN.NUMESG (N) values ('Petronela');
Insert into CIPRIAN.NUMESG (N) values ('Petruta');
Insert into CIPRIAN.NUMESG (N) values ('Pompilia');
Insert into CIPRIAN.NUMESG (N) values ('Profira');
Insert into CIPRIAN.NUMESG (N) values ('Rada');
Insert into CIPRIAN.NUMESG (N) values ('Rafila');
Insert into CIPRIAN.NUMESG (N) values ('Raluca');
Insert into CIPRIAN.NUMESG (N) values ('Ramona');
Insert into CIPRIAN.NUMESG (N) values ('Rebeca');
Insert into CIPRIAN.NUMESG (N) values ('Renata');
Insert into CIPRIAN.NUMESG (N) values ('Rica');
Insert into CIPRIAN.NUMESG (N) values ('Roberta');
Insert into CIPRIAN.NUMESG (N) values ('Robertina');
Insert into CIPRIAN.NUMESG (N) values ('Rodica');
Insert into CIPRIAN.NUMESG (N) values ('Romanita');
Insert into CIPRIAN.NUMESG (N) values ('Romina');
Insert into CIPRIAN.NUMESG (N) values ('Roza');
Insert into CIPRIAN.NUMESG (N) values ('Rozalia');
Insert into CIPRIAN.NUMESG (N) values ('Roxana');
Insert into CIPRIAN.NUMESG (N) values ('Roxelana');
Insert into CIPRIAN.NUMESG (N) values ('Ruxanda');
Insert into CIPRIAN.NUMESG (N) values ('Ruxandra');
Insert into CIPRIAN.NUMESG (N) values ('Sabina');
Insert into CIPRIAN.NUMESG (N) values ('Sabrina');
Insert into CIPRIAN.NUMESG (N) values ('Safta');
Insert into CIPRIAN.NUMESG (N) values ('Salomea');
Insert into CIPRIAN.NUMESG (N) values ('Sanda');
Insert into CIPRIAN.NUMESG (N) values ('Saveta');
Insert into CIPRIAN.NUMESG (N) values ('Savina');
Insert into CIPRIAN.NUMESG (N) values ('Sanziana');
Insert into CIPRIAN.NUMESG (N) values ('Semenica');
Insert into CIPRIAN.NUMESG (N) values ('Severina');
Insert into CIPRIAN.NUMESG (N) values ('Sidonia');
Insert into CIPRIAN.NUMESG (N) values ('Silvia');
Insert into CIPRIAN.NUMESG (N) values ('Silvana');
Insert into CIPRIAN.NUMESG (N) values ('Silviana');
Insert into CIPRIAN.NUMESG (N) values ('Simina');
Insert into CIPRIAN.NUMESG (N) values ('Simona');
Insert into CIPRIAN.NUMESG (N) values ('Smaranda');
Insert into CIPRIAN.NUMESG (N) values ('Sofia');
Insert into CIPRIAN.NUMESG (N) values ('Sonia');
Insert into CIPRIAN.NUMESG (N) values ('Sorana');
Insert into CIPRIAN.NUMESG (N) values ('Sorina');
Insert into CIPRIAN.NUMESG (N) values ('Speranta');
Insert into CIPRIAN.NUMESG (N) values ('Stana');
Insert into CIPRIAN.NUMESG (N) values ('Stanca');
Insert into CIPRIAN.NUMESG (N) values ('Stela');
Insert into CIPRIAN.NUMESG (N) values ('Steliana');
Insert into CIPRIAN.NUMESG (N) values ('Steluta');
Insert into CIPRIAN.NUMESG (N) values ('Suzana');
Insert into CIPRIAN.NUMESG (N) values ('Svetlana');
Insert into CIPRIAN.NUMESG (N) values ('Stefana');
Insert into CIPRIAN.NUMESG (N) values ('Tamara');
Insert into CIPRIAN.NUMESG (N) values ('Tania');
Insert into CIPRIAN.NUMESG (N) values ('Tatiana');
Insert into CIPRIAN.NUMESG (N) values ('Teea');
Insert into CIPRIAN.NUMESG (N) values ('Teodora');
Insert into CIPRIAN.NUMESG (N) values ('Teodosia');
Insert into CIPRIAN.NUMESG (N) values ('Teona');
Insert into CIPRIAN.NUMESG (N) values ('Tiberia');
Insert into CIPRIAN.NUMESG (N) values ('Timea');
Insert into CIPRIAN.NUMESG (N) values ('Tinca');
Insert into CIPRIAN.NUMESG (N) values ('Tincuta');
Insert into CIPRIAN.NUMESG (N) values ('Tudora');
Insert into CIPRIAN.NUMESG (N) values ('Tudorita');
Insert into CIPRIAN.NUMESG (N) values ('Tudosia');
Insert into CIPRIAN.NUMESG (N) values ('Valentina');
Insert into CIPRIAN.NUMESG (N) values ('Valeria');
Insert into CIPRIAN.NUMESG (N) values ('Vanesa');
Insert into CIPRIAN.NUMESG (N) values ('Varvara');
Insert into CIPRIAN.NUMESG (N) values ('Vasilica');
Insert into CIPRIAN.NUMESG (N) values ('Venera');
Insert into CIPRIAN.NUMESG (N) values ('Vera');
Insert into CIPRIAN.NUMESG (N) values ('Veronica');
Insert into CIPRIAN.NUMESG (N) values ('Veta');
Insert into CIPRIAN.NUMESG (N) values ('Vicentia');
Insert into CIPRIAN.NUMESG (N) values ('Victoria');
Insert into CIPRIAN.NUMESG (N) values ('Violeta');
Insert into CIPRIAN.NUMESG (N) values ('Viorela');
Insert into CIPRIAN.NUMESG (N) values ('Viorica');
Insert into CIPRIAN.NUMESG (N) values ('Virginia');
Insert into CIPRIAN.NUMESG (N) values ('Viviana');
Insert into CIPRIAN.NUMESG (N) values ('Vladelina');
Insert into CIPRIAN.NUMESG (N) values ('Voichita');
Insert into CIPRIAN.NUMESG (N) values ('Xenia');
Insert into CIPRIAN.NUMESG (N) values ('Zaharia');
Insert into CIPRIAN.NUMESG (N) values ('Zamfira');
Insert into CIPRIAN.NUMESG (N) values ('Zaraza');
Insert into CIPRIAN.NUMESG (N) values ('Zenobia');
Insert into CIPRIAN.NUMESG (N) values ('Zenovia');
Insert into CIPRIAN.NUMESG (N) values ('Zina');
Insert into CIPRIAN.NUMESG (N) values ('Zoe');
Insert into CIPRIAN.NUMESG (N) values ('Adam');
Insert into CIPRIAN.NUMESG (N) values ('Adelin');
Insert into CIPRIAN.NUMESG (N) values ('Adonis');
Insert into CIPRIAN.NUMESG (N) values ('Adrian');
Insert into CIPRIAN.NUMESG (N) values ('Adi');
Insert into CIPRIAN.NUMESG (N) values ('Agnos');
Insert into CIPRIAN.NUMESG (N) values ('Albert');
Insert into CIPRIAN.NUMESG (N) values ('Alex');
Insert into CIPRIAN.NUMESG (N) values ('Alexandru');
Insert into CIPRIAN.NUMESG (N) values ('Alexe');
Insert into CIPRIAN.NUMESG (N) values ('Aleodor');
Insert into CIPRIAN.NUMESG (N) values ('Alin');
Insert into CIPRIAN.NUMESG (N) values ('Alistar');
Insert into CIPRIAN.NUMESG (N) values ('Amedeu');
Insert into CIPRIAN.NUMESG (N) values ('Amza');
Insert into CIPRIAN.NUMESG (N) values ('Anatolie');
Insert into CIPRIAN.NUMESG (N) values ('Andrei');
Insert into CIPRIAN.NUMESG (N) values ('Andrian');
Insert into CIPRIAN.NUMESG (N) values ('Angel');
Insert into CIPRIAN.NUMESG (N) values ('Anghel');
Insert into CIPRIAN.NUMESG (N) values ('Antim');
Insert into CIPRIAN.NUMESG (N) values ('Anton');
Insert into CIPRIAN.NUMESG (N) values ('Antonie');
Insert into CIPRIAN.NUMESG (N) values ('Antoniu');
Insert into CIPRIAN.NUMESG (N) values ('Arian');
Insert into CIPRIAN.NUMESG (N) values ('Aristide');
Insert into CIPRIAN.NUMESG (N) values ('Arsenie');
Insert into CIPRIAN.NUMESG (N) values ('Augustin');
Insert into CIPRIAN.NUMESG (N) values ('Aurel');
Insert into CIPRIAN.NUMESG (N) values ('Aurelian');
Insert into CIPRIAN.NUMESG (N) values ('Aurica');
Insert into CIPRIAN.NUMESG (N) values ('Avram');
Insert into CIPRIAN.NUMESG (N) values ('Axinte');
Insert into CIPRIAN.NUMESG (N) values ('Barbu');
Insert into CIPRIAN.NUMESG (N) values ('Bartolomeu');
Insert into CIPRIAN.NUMESG (N) values ('Basarab');
Insert into CIPRIAN.NUMESG (N) values ('Banel');
Insert into CIPRIAN.NUMESG (N) values ('Bebe');
Insert into CIPRIAN.NUMESG (N) values ('Beniamin');
Insert into CIPRIAN.NUMESG (N) values ('Benone');
Insert into CIPRIAN.NUMESG (N) values ('Bernard');
Insert into CIPRIAN.NUMESG (N) values ('Bogdan');
Insert into CIPRIAN.NUMESG (N) values ('Bradut');
Insert into CIPRIAN.NUMESG (N) values ('Bucur');
Insert into CIPRIAN.NUMESG (N) values ('Caius');
Insert into CIPRIAN.NUMESG (N) values ('Camil');
Insert into CIPRIAN.NUMESG (N) values ('Cantemir');
Insert into CIPRIAN.NUMESG (N) values ('Carol');
Insert into CIPRIAN.NUMESG (N) values ('Casian');
Insert into CIPRIAN.NUMESG (N) values ('Cazimir');
Insert into CIPRIAN.NUMESG (N) values ('Calin');
Insert into CIPRIAN.NUMESG (N) values ('Catalin');
Insert into CIPRIAN.NUMESG (N) values ('Cedrin');
Insert into CIPRIAN.NUMESG (N) values ('Cezar');
Insert into CIPRIAN.NUMESG (N) values ('Ciprian');
Insert into CIPRIAN.NUMESG (N) values ('Claudiu');
Insert into CIPRIAN.NUMESG (N) values ('Codin');
Insert into CIPRIAN.NUMESG (N) values ('Codrin');
Insert into CIPRIAN.NUMESG (N) values ('Codrut');
Insert into CIPRIAN.NUMESG (N) values ('Cornel');
Insert into CIPRIAN.NUMESG (N) values ('Corneliu');
Insert into CIPRIAN.NUMESG (N) values ('Corvin');
Insert into CIPRIAN.NUMESG (N) values ('Constantin');
Insert into CIPRIAN.NUMESG (N) values ('Cosmin');
Insert into CIPRIAN.NUMESG (N) values ('Costache');
Insert into CIPRIAN.NUMESG (N) values ('Costel');
Insert into CIPRIAN.NUMESG (N) values ('Costin');
Insert into CIPRIAN.NUMESG (N) values ('Crin');
Insert into CIPRIAN.NUMESG (N) values ('Cristea');
Insert into CIPRIAN.NUMESG (N) values ('Cristian');
Insert into CIPRIAN.NUMESG (N) values ('Cristobal');
Insert into CIPRIAN.NUMESG (N) values ('Cristofor');
Insert into CIPRIAN.NUMESG (N) values ('Dacian');
Insert into CIPRIAN.NUMESG (N) values ('Damian');
Insert into CIPRIAN.NUMESG (N) values ('Dan');
Insert into CIPRIAN.NUMESG (N) values ('Daniel');
Insert into CIPRIAN.NUMESG (N) values ('Darius');
Insert into CIPRIAN.NUMESG (N) values ('David');
Insert into CIPRIAN.NUMESG (N) values ('Decebal');
Insert into CIPRIAN.NUMESG (N) values ('Denis');
Insert into CIPRIAN.NUMESG (N) values ('Dinu');
Insert into CIPRIAN.NUMESG (N) values ('Dominic');
Insert into CIPRIAN.NUMESG (N) values ('Dorel');
Insert into CIPRIAN.NUMESG (N) values ('Dorian');
Insert into CIPRIAN.NUMESG (N) values ('Dorin');
Insert into CIPRIAN.NUMESG (N) values ('Dorinel');
Insert into CIPRIAN.NUMESG (N) values ('Doru');
Insert into CIPRIAN.NUMESG (N) values ('Dragos');
Insert into CIPRIAN.NUMESG (N) values ('Ducu');
Insert into CIPRIAN.NUMESG (N) values ('Dumitru');
Insert into CIPRIAN.NUMESG (N) values ('Edgar');
Insert into CIPRIAN.NUMESG (N) values ('Edmond');
Insert into CIPRIAN.NUMESG (N) values ('Eduard');
Insert into CIPRIAN.NUMESG (N) values ('Eftimie');
Insert into CIPRIAN.NUMESG (N) values ('Emil');
Insert into CIPRIAN.NUMESG (N) values ('Emilian');
Insert into CIPRIAN.NUMESG (N) values ('Emanoil');
Insert into CIPRIAN.NUMESG (N) values ('Emanuel');
Insert into CIPRIAN.NUMESG (N) values ('Emanuil');
Insert into CIPRIAN.NUMESG (N) values ('Eremia');
Insert into CIPRIAN.NUMESG (N) values ('Eric');
Insert into CIPRIAN.NUMESG (N) values ('Ernest');
Insert into CIPRIAN.NUMESG (N) values ('Eugen');
Insert into CIPRIAN.NUMESG (N) values ('Eusebiu');
Insert into CIPRIAN.NUMESG (N) values ('Eustatiu');
Insert into CIPRIAN.NUMESG (N) values ('Fabian');
Insert into CIPRIAN.NUMESG (N) values ('Felix');
Insert into CIPRIAN.NUMESG (N) values ('Filip');
Insert into CIPRIAN.NUMESG (N) values ('Fiodor');
Insert into CIPRIAN.NUMESG (N) values ('Flaviu');
Insert into CIPRIAN.NUMESG (N) values ('Florea');
Insert into CIPRIAN.NUMESG (N) values ('Florentin');
Insert into CIPRIAN.NUMESG (N) values ('Florian');
Insert into CIPRIAN.NUMESG (N) values ('Florin');
Insert into CIPRIAN.NUMESG (N) values ('Francisc');
Insert into CIPRIAN.NUMESG (N) values ('Frederic');
Insert into CIPRIAN.NUMESG (N) values ('Gabi');
Insert into CIPRIAN.NUMESG (N) values ('Gabriel');
Insert into CIPRIAN.NUMESG (N) values ('Gelu');
Insert into CIPRIAN.NUMESG (N) values ('George');
Insert into CIPRIAN.NUMESG (N) values ('Georgel');
Insert into CIPRIAN.NUMESG (N) values ('Georgian');
Insert into CIPRIAN.NUMESG (N) values ('Ghenadie');
Insert into CIPRIAN.NUMESG (N) values ('Gheorghe');
Insert into CIPRIAN.NUMESG (N) values ('Gheorghit?');
Insert into CIPRIAN.NUMESG (N) values ('Ghita');
Insert into CIPRIAN.NUMESG (N) values ('Gica');
Insert into CIPRIAN.NUMESG (N) values ('Gicu');
Insert into CIPRIAN.NUMESG (N) values ('Giorgian');
Insert into CIPRIAN.NUMESG (N) values ('Gratian');
Insert into CIPRIAN.NUMESG (N) values ('Gregorian');
Insert into CIPRIAN.NUMESG (N) values ('Grigore');
Insert into CIPRIAN.NUMESG (N) values ('Haralamb');
Insert into CIPRIAN.NUMESG (N) values ('Haralambie');
Insert into CIPRIAN.NUMESG (N) values ('Horatiu');
Insert into CIPRIAN.NUMESG (N) values ('Horea');
Insert into CIPRIAN.NUMESG (N) values ('Horia');
Insert into CIPRIAN.NUMESG (N) values ('Iacob');
Insert into CIPRIAN.NUMESG (N) values ('Iancu');
Insert into CIPRIAN.NUMESG (N) values ('Ianis');
Insert into CIPRIAN.NUMESG (N) values ('Ieremia');
Insert into CIPRIAN.NUMESG (N) values ('Ilarie');
Insert into CIPRIAN.NUMESG (N) values ('Ilarion');
Insert into CIPRIAN.NUMESG (N) values ('Ilie');
Insert into CIPRIAN.NUMESG (N) values ('Inocentiu');
Insert into CIPRIAN.NUMESG (N) values ('Ioan');
Insert into CIPRIAN.NUMESG (N) values ('Ion');
Insert into CIPRIAN.NUMESG (N) values ('Ionel');
Insert into CIPRIAN.NUMESG (N) values ('Ionica');
Insert into CIPRIAN.NUMESG (N) values ('Ionut');
Insert into CIPRIAN.NUMESG (N) values ('Iosif');
Insert into CIPRIAN.NUMESG (N) values ('Irinel');
Insert into CIPRIAN.NUMESG (N) values ('Iulian');
Insert into CIPRIAN.NUMESG (N) values ('Iuliu');
Insert into CIPRIAN.NUMESG (N) values ('Iurie');
Insert into CIPRIAN.NUMESG (N) values ('Iustin');
Insert into CIPRIAN.NUMESG (N) values ('Iustinian');
Insert into CIPRIAN.NUMESG (N) values ('Ivan');
Insert into CIPRIAN.NUMESG (N) values ('Jan');
Insert into CIPRIAN.NUMESG (N) values ('Jean');
Insert into CIPRIAN.NUMESG (N) values ('Jenel');
Insert into CIPRIAN.NUMESG (N) values ('Ladislau');
Insert into CIPRIAN.NUMESG (N) values ('Lascar');
Insert into CIPRIAN.NUMESG (N) values ('Laurentiu');
Insert into CIPRIAN.NUMESG (N) values ('Laurian');
Insert into CIPRIAN.NUMESG (N) values ('Lazar');
Insert into CIPRIAN.NUMESG (N) values ('Leonard');
Insert into CIPRIAN.NUMESG (N) values ('Leontin');
Insert into CIPRIAN.NUMESG (N) values ('Leordean');
Insert into CIPRIAN.NUMESG (N) values ('Lica');
Insert into CIPRIAN.NUMESG (N) values ('Liviu');
Insert into CIPRIAN.NUMESG (N) values ('Lorin');
Insert into CIPRIAN.NUMESG (N) values ('Luca');
Insert into CIPRIAN.NUMESG (N) values ('Lucentiu');
Insert into CIPRIAN.NUMESG (N) values ('Lucian');
Insert into CIPRIAN.NUMESG (N) values ('Lucretiu');
Insert into CIPRIAN.NUMESG (N) values ('Ludovic');
Insert into CIPRIAN.NUMESG (N) values ('Manole');
Insert into CIPRIAN.NUMESG (N) values ('Marcel');
Insert into CIPRIAN.NUMESG (N) values ('Marcu');
Insert into CIPRIAN.NUMESG (N) values ('Marian');
Insert into CIPRIAN.NUMESG (N) values ('Marin');
Insert into CIPRIAN.NUMESG (N) values ('Marius');
Insert into CIPRIAN.NUMESG (N) values ('Martin');
Insert into CIPRIAN.NUMESG (N) values ('Matei');
Insert into CIPRIAN.NUMESG (N) values ('Maxim');
Insert into CIPRIAN.NUMESG (N) values ('Maximilian');
Insert into CIPRIAN.NUMESG (N) values ('Madalin');
Insert into CIPRIAN.NUMESG (N) values ('Mihai');
Insert into CIPRIAN.NUMESG (N) values ('Mihail');
Insert into CIPRIAN.NUMESG (N) values ('Mihnea');
Insert into CIPRIAN.NUMESG (N) values ('Mircea');
Insert into CIPRIAN.NUMESG (N) values ('Miron');
Insert into CIPRIAN.NUMESG (N) values ('Mitica');
Insert into CIPRIAN.NUMESG (N) values ('Mitrut');
Insert into CIPRIAN.NUMESG (N) values ('Mugur');
Insert into CIPRIAN.NUMESG (N) values ('Mugurel');
Insert into CIPRIAN.NUMESG (N) values ('Nae');
Insert into CIPRIAN.NUMESG (N) values ('Narcis');
Insert into CIPRIAN.NUMESG (N) values ('Nechifor');
Insert into CIPRIAN.NUMESG (N) values ('Nelu');
Insert into CIPRIAN.NUMESG (N) values ('Nichifor');
Insert into CIPRIAN.NUMESG (N) values ('Nicoara');
Insert into CIPRIAN.NUMESG (N) values ('Nicodim');
Insert into CIPRIAN.NUMESG (N) values ('Nicolae');
Insert into CIPRIAN.NUMESG (N) values ('Nicolaie');
Insert into CIPRIAN.NUMESG (N) values ('Nicu');
Insert into CIPRIAN.NUMESG (N) values ('Nicuta');
Insert into CIPRIAN.NUMESG (N) values ('Niculi??');
Insert into CIPRIAN.NUMESG (N) values ('Nicusor');
Insert into CIPRIAN.NUMESG (N) values ('Norbert');
Insert into CIPRIAN.NUMESG (N) values ('Norman');
Insert into CIPRIAN.NUMESG (N) values ('Octav');
Insert into CIPRIAN.NUMESG (N) values ('Octavian');
Insert into CIPRIAN.NUMESG (N) values ('Octaviu');
Insert into CIPRIAN.NUMESG (N) values ('Olimpian');
Insert into CIPRIAN.NUMESG (N) values ('Olimpiu');
Insert into CIPRIAN.NUMESG (N) values ('Oliviu');
Insert into CIPRIAN.NUMESG (N) values ('Ovidiu');
Insert into CIPRIAN.NUMESG (N) values ('Pamfil');
Insert into CIPRIAN.NUMESG (N) values ('Panait');
Insert into CIPRIAN.NUMESG (N) values ('Panagachie');
Insert into CIPRIAN.NUMESG (N) values ('Paul');
Insert into CIPRIAN.NUMESG (N) values ('Pavel');
Insert into CIPRIAN.NUMESG (N) values ('Patru');
Insert into CIPRIAN.NUMESG (N) values ('Petre');
Insert into CIPRIAN.NUMESG (N) values ('Petric?');
Insert into CIPRIAN.NUMESG (N) values ('Petrisor');
Insert into CIPRIAN.NUMESG (N) values ('Petru');
Insert into CIPRIAN.NUMESG (N) values ('Petrut');
Insert into CIPRIAN.NUMESG (N) values ('Pompiliu');
Insert into CIPRIAN.NUMESG (N) values ('Radu');
Insert into CIPRIAN.NUMESG (N) values ('Rafael');
Insert into CIPRIAN.NUMESG (N) values ('Rares');
Insert into CIPRIAN.NUMESG (N) values ('Raul');
Insert into CIPRIAN.NUMESG (N) values ('Raducu');
Insert into CIPRIAN.NUMESG (N) values ('Razvan');
Insert into CIPRIAN.NUMESG (N) values ('Relu');
Insert into CIPRIAN.NUMESG (N) values ('Remus');
Insert into CIPRIAN.NUMESG (N) values ('Robert');
Insert into CIPRIAN.NUMESG (N) values ('Romeo');
Insert into CIPRIAN.NUMESG (N) values ('Romulus');
Insert into CIPRIAN.NUMESG (N) values ('Sabin');
Insert into CIPRIAN.NUMESG (N) values ('Sandu');
Insert into CIPRIAN.NUMESG (N) values ('Sava');
Insert into CIPRIAN.NUMESG (N) values ('Sebastian');
Insert into CIPRIAN.NUMESG (N) values ('Sergiu');
Insert into CIPRIAN.NUMESG (N) values ('Sever');
Insert into CIPRIAN.NUMESG (N) values ('Severin');
Insert into CIPRIAN.NUMESG (N) values ('Silvian');
Insert into CIPRIAN.NUMESG (N) values ('Silviu');
Insert into CIPRIAN.NUMESG (N) values ('Simi');
Insert into CIPRIAN.NUMESG (N) values ('Simion');
Insert into CIPRIAN.NUMESG (N) values ('Sinica');
Insert into CIPRIAN.NUMESG (N) values ('Sorin');
Insert into CIPRIAN.NUMESG (N) values ('Stan');
Insert into CIPRIAN.NUMESG (N) values ('Stancu');
Insert into CIPRIAN.NUMESG (N) values ('Stelian');
Insert into CIPRIAN.NUMESG (N) values ('Sandu');
Insert into CIPRIAN.NUMESG (N) values ('Serban');
Insert into CIPRIAN.NUMESG (N) values ('Stefan');
Insert into CIPRIAN.NUMESG (N) values ('Teodor');
Insert into CIPRIAN.NUMESG (N) values ('Teofil');
Insert into CIPRIAN.NUMESG (N) values ('Teohari');
Insert into CIPRIAN.NUMESG (N) values ('Theodor');
Insert into CIPRIAN.NUMESG (N) values ('Tiberiu');
Insert into CIPRIAN.NUMESG (N) values ('Timotei');
Insert into CIPRIAN.NUMESG (N) values ('Titus');
Insert into CIPRIAN.NUMESG (N) values ('Todor');
Insert into CIPRIAN.NUMESG (N) values ('Toma');
Insert into CIPRIAN.NUMESG (N) values ('Traian');
Insert into CIPRIAN.NUMESG (N) values ('Tudor');
Insert into CIPRIAN.NUMESG (N) values ('Valentin');
Insert into CIPRIAN.NUMESG (N) values ('Valeriu');
Insert into CIPRIAN.NUMESG (N) values ('Valter');
Insert into CIPRIAN.NUMESG (N) values ('Vasile');
Insert into CIPRIAN.NUMESG (N) values ('Vasilica');
Insert into CIPRIAN.NUMESG (N) values ('Veniamin');
Insert into CIPRIAN.NUMESG (N) values ('Vicentiu');
Insert into CIPRIAN.NUMESG (N) values ('Victor');
Insert into CIPRIAN.NUMESG (N) values ('Vincentiu');
Insert into CIPRIAN.NUMESG (N) values ('Viorel');
Insert into CIPRIAN.NUMESG (N) values ('Visarion');
Insert into CIPRIAN.NUMESG (N) values ('Vlad');
Insert into CIPRIAN.NUMESG (N) values ('Vladimir');
Insert into CIPRIAN.NUMESG (N) values ('Vlaicu');
Insert into CIPRIAN.NUMESG (N) values ('Voicu');
Insert into CIPRIAN.NUMESG (N) values ('Zamfir');
Insert into CIPRIAN.NUMESG (N) values ('Zeno');
Insert into CIPRIAN.NUMESG (N) values ('Ada');
Insert into CIPRIAN.NUMESG (N) values ('Adela');
Insert into CIPRIAN.NUMESG (N) values ('Adelaida');
Insert into CIPRIAN.NUMESG (N) values ('Adelina');
Insert into CIPRIAN.NUMESG (N) values ('Adina');
Insert into CIPRIAN.NUMESG (N) values ('Adriana');
Insert into CIPRIAN.NUMESG (N) values ('Agata');
Insert into CIPRIAN.NUMESG (N) values ('Aglaia');
Insert into CIPRIAN.NUMESG (N) values ('Agripina');
Insert into CIPRIAN.NUMESG (N) values ('Aida');
Insert into CIPRIAN.NUMESG (N) values ('Alberta');
Insert into CIPRIAN.NUMESG (N) values ('Albertina');
Insert into CIPRIAN.NUMESG (N) values ('Alexandra');
Insert into CIPRIAN.NUMESG (N) values ('Alexandrina');
Insert into CIPRIAN.NUMESG (N) values ('Alida');
Insert into CIPRIAN.NUMESG (N) values ('Alina');
Insert into CIPRIAN.NUMESG (N) values ('Alice');
Insert into CIPRIAN.NUMESG (N) values ('Alis');
Insert into CIPRIAN.NUMESG (N) values ('Alma');
Insert into CIPRIAN.NUMESG (N) values ('Amalia');
Insert into CIPRIAN.NUMESG (N) values ('Amelia');
Insert into CIPRIAN.NUMESG (N) values ('Amanda');
Insert into CIPRIAN.NUMESG (N) values ('Ana');
Insert into CIPRIAN.NUMESG (N) values ('Anabela');
Insert into CIPRIAN.NUMESG (N) values ('Anaida');
Insert into CIPRIAN.NUMESG (N) values ('Anamaria');
Insert into CIPRIAN.NUMESG (N) values ('Anastasia');
Insert into CIPRIAN.NUMESG (N) values ('Anca');
Insert into CIPRIAN.NUMESG (N) values ('Ancuta');
Insert into CIPRIAN.NUMESG (N) values ('Anda');
Insert into CIPRIAN.NUMESG (N) values ('Andra');
Insert into CIPRIAN.NUMESG (N) values ('Andrada');
Insert into CIPRIAN.NUMESG (N) values ('Andreea');
Insert into CIPRIAN.NUMESG (N) values ('Anemona');
Insert into CIPRIAN.NUMESG (N) values ('Aneta');
Insert into CIPRIAN.NUMESG (N) values ('Angela');
Insert into CIPRIAN.NUMESG (N) values ('Anghelina');
Insert into CIPRIAN.NUMESG (N) values ('Anica');
Insert into CIPRIAN.NUMESG (N) values ('Anisoara');
Insert into CIPRIAN.NUMESG (N) values ('Antoaneta');
Insert into CIPRIAN.NUMESG (N) values ('Antonia');
Insert into CIPRIAN.NUMESG (N) values ('Antonela');
Insert into CIPRIAN.NUMESG (N) values ('Anuta');
Insert into CIPRIAN.NUMESG (N) values ('Ariadna');
Insert into CIPRIAN.NUMESG (N) values ('Ariana');
Insert into CIPRIAN.NUMESG (N) values ('Arina');
Insert into CIPRIAN.NUMESG (N) values ('Aristita');
Insert into CIPRIAN.NUMESG (N) values ('Artemisa');
Insert into CIPRIAN.NUMESG (N) values ('Astrid');
Insert into CIPRIAN.NUMESG (N) values ('Atena');
Insert into CIPRIAN.NUMESG (N) values ('Augustina');
Insert into CIPRIAN.NUMESG (N) values ('Aura');
Insert into CIPRIAN.NUMESG (N) values ('Aurelia');
Insert into CIPRIAN.NUMESG (N) values ('Aureliana');
Insert into CIPRIAN.NUMESG (N) values ('Aurica');
Insert into CIPRIAN.NUMESG (N) values ('Aurora');
Insert into CIPRIAN.NUMESG (N) values ('Axenia');
Insert into CIPRIAN.NUMESG (N) values ('Beatrice');
Insert into CIPRIAN.NUMESG (N) values ('Betina');
Insert into CIPRIAN.NUMESG (N) values ('Bianca');
Insert into CIPRIAN.NUMESG (N) values ('Blanduzia');
Insert into CIPRIAN.NUMESG (N) values ('Bogdana');
Insert into CIPRIAN.NUMESG (N) values ('Brandusa');
Insert into CIPRIAN.NUMESG (N) values ('Camelia');
Insert into CIPRIAN.NUMESG (N) values ('Carina');
Insert into CIPRIAN.NUMESG (N) values ('Carla');
Insert into CIPRIAN.NUMESG (N) values ('Carmen');
Insert into CIPRIAN.NUMESG (N) values ('Carmina');
Insert into CIPRIAN.NUMESG (N) values ('Carolina');
Insert into CIPRIAN.NUMESG (N) values ('Casandra');
Insert into CIPRIAN.NUMESG (N) values ('Casiana');
Insert into CIPRIAN.NUMESG (N) values ('Caterina');
Insert into CIPRIAN.NUMESG (N) values ('Catinca');
Insert into CIPRIAN.NUMESG (N) values ('Catrina');
Insert into CIPRIAN.NUMESG (N) values ('Catrinel');
Insert into CIPRIAN.NUMESG (N) values ('Catalina');
Insert into CIPRIAN.NUMESG (N) values ('Cecilia');
Insert into CIPRIAN.NUMESG (N) values ('Celia');
Insert into CIPRIAN.NUMESG (N) values ('Cerasela');
Insert into CIPRIAN.NUMESG (N) values ('Cezara');
Insert into CIPRIAN.NUMESG (N) values ('Cipriana');
Insert into CIPRIAN.NUMESG (N) values ('Clara');
Insert into CIPRIAN.NUMESG (N) values ('Clarisa');
Insert into CIPRIAN.NUMESG (N) values ('Claudia');
Insert into CIPRIAN.NUMESG (N) values ('Clementina');
Insert into CIPRIAN.NUMESG (N) values ('Cleopatra');
Insert into CIPRIAN.NUMESG (N) values ('Codrina');
Insert into CIPRIAN.NUMESG (N) values ('Codruta');
Insert into CIPRIAN.NUMESG (N) values ('Constantina');
Insert into CIPRIAN.NUMESG (N) values ('Constanta');
Insert into CIPRIAN.NUMESG (N) values ('Consuela');
Insert into CIPRIAN.NUMESG (N) values ('Coralia');
Insert into CIPRIAN.NUMESG (N) values ('Corina');
Insert into CIPRIAN.NUMESG (N) values ('Cornelia');
Insert into CIPRIAN.NUMESG (N) values ('Cosmina');
Insert into CIPRIAN.NUMESG (N) values ('Crenguta');
Insert into CIPRIAN.NUMESG (N) values ('Crina');
Insert into CIPRIAN.NUMESG (N) values ('Cristina');
Insert into CIPRIAN.NUMESG (N) values ('Daciana');
Insert into CIPRIAN.NUMESG (N) values ('Dafina');
Insert into CIPRIAN.NUMESG (N) values ('Daiana');
Insert into CIPRIAN.NUMESG (N) values ('Dalia');
Insert into CIPRIAN.NUMESG (N) values ('Dana');
Insert into CIPRIAN.NUMESG (N) values ('Daniela');
Insert into CIPRIAN.NUMESG (N) values ('Daria');
Insert into CIPRIAN.NUMESG (N) values ('Dariana');
Insert into CIPRIAN.NUMESG (N) values ('Delia');
Insert into CIPRIAN.NUMESG (N) values ('Demetra');
Insert into CIPRIAN.NUMESG (N) values ('Denisa');
Insert into CIPRIAN.NUMESG (N) values ('Despina');
Insert into CIPRIAN.NUMESG (N) values ('Diana');
Insert into CIPRIAN.NUMESG (N) values ('Dida');
Insert into CIPRIAN.NUMESG (N) values ('Didina');
Insert into CIPRIAN.NUMESG (N) values ('Dimitrina');
Insert into CIPRIAN.NUMESG (N) values ('Dina');
Insert into CIPRIAN.NUMESG (N) values ('Dochia');
Insert into CIPRIAN.NUMESG (N) values ('Doina');
Insert into CIPRIAN.NUMESG (N) values ('Domnica');
Insert into CIPRIAN.NUMESG (N) values ('Dora');
Insert into CIPRIAN.NUMESG (N) values ('Doriana');
Insert into CIPRIAN.NUMESG (N) values ('Dorina');
Insert into CIPRIAN.NUMESG (N) values ('Dorli');
Insert into CIPRIAN.NUMESG (N) values ('Draga');
Insert into CIPRIAN.NUMESG (N) values ('Dumitra');
Insert into CIPRIAN.NUMESG (N) values ('Dumitrana');
Insert into CIPRIAN.NUMESG (N) values ('Ecaterina');
Insert into CIPRIAN.NUMESG (N) values ('Eftimia');
Insert into CIPRIAN.NUMESG (N) values ('Elena');
Insert into CIPRIAN.NUMESG (N) values ('Eleonora');
Insert into CIPRIAN.NUMESG (N) values ('Eliana');
Insert into CIPRIAN.NUMESG (N) values ('Elisabeta');
Insert into CIPRIAN.NUMESG (N) values ('Elisaveta');
Insert into CIPRIAN.NUMESG (N) values ('Eliza');
Insert into CIPRIAN.NUMESG (N) values ('Elodia');
Insert into CIPRIAN.NUMESG (N) values ('Elvira');
Insert into CIPRIAN.NUMESG (N) values ('Emilia');
Insert into CIPRIAN.NUMESG (N) values ('Emanuela');
Insert into CIPRIAN.NUMESG (N) values ('Erica');
Insert into CIPRIAN.NUMESG (N) values ('Estera');
Insert into CIPRIAN.NUMESG (N) values ('Eufrosina');
Insert into CIPRIAN.NUMESG (N) values ('Eugenia');
Insert into CIPRIAN.NUMESG (N) values ('Eusebia');
Insert into CIPRIAN.NUMESG (N) values ('Eva');
Insert into CIPRIAN.NUMESG (N) values ('Evanghelina');
Insert into CIPRIAN.NUMESG (N) values ('Evelina');
Insert into CIPRIAN.NUMESG (N) values ('Fabia');
Insert into CIPRIAN.NUMESG (N) values ('Fabiana');
Insert into CIPRIAN.NUMESG (N) values ('Felicia');
Insert into CIPRIAN.NUMESG (N) values ('Filofteia');
Insert into CIPRIAN.NUMESG (N) values ('Fiona');
Insert into CIPRIAN.NUMESG (N) values ('Flavia');
Insert into CIPRIAN.NUMESG (N) values ('Floare');
Insert into CIPRIAN.NUMESG (N) values ('Floarea');
Insert into CIPRIAN.NUMESG (N) values ('Flora');
Insert into CIPRIAN.NUMESG (N) values ('Floriana');
Insert into CIPRIAN.NUMESG (N) values ('Florica');
Insert into CIPRIAN.NUMESG (N) values ('Florina');
Insert into CIPRIAN.NUMESG (N) values ('Florentina');
Insert into CIPRIAN.NUMESG (N) values ('Florenta');
Insert into CIPRIAN.NUMESG (N) values ('Francesca');
Insert into CIPRIAN.NUMESG (N) values ('Frusina');
Insert into CIPRIAN.NUMESG (N) values ('Gabriela');
Insert into CIPRIAN.NUMESG (N) values ('Geanina');
Insert into CIPRIAN.NUMESG (N) values ('Gentiana');
Insert into CIPRIAN.NUMESG (N) values ('Georgeta');
Insert into CIPRIAN.NUMESG (N) values ('Georgia');
Insert into CIPRIAN.NUMESG (N) values ('Georgiana');
Insert into CIPRIAN.NUMESG (N) values ('Geta');
Insert into CIPRIAN.NUMESG (N) values ('Gherghina');
Insert into CIPRIAN.NUMESG (N) values ('Gianina');
Insert into CIPRIAN.NUMESG (N) values ('Gina');
Insert into CIPRIAN.NUMESG (N) values ('Giorgiana');
Insert into CIPRIAN.NUMESG (N) values ('Gratiana');
Insert into CIPRIAN.NUMESG (N) values ('Gratiela');
Insert into CIPRIAN.NUMESG (N) values ('Hortensia');
Insert into CIPRIAN.NUMESG (N) values ('Henrieta');
Insert into CIPRIAN.NUMESG (N) values ('Heracleea');
Insert into CIPRIAN.NUMESG (N) values ('Iasmina');
Insert into CIPRIAN.NUMESG (N) values ('Ica');
Insert into CIPRIAN.NUMESG (N) values ('Ileana');
Insert into CIPRIAN.NUMESG (N) values ('Ilinca');
Insert into CIPRIAN.NUMESG (N) values ('Ilona');
Insert into CIPRIAN.NUMESG (N) values ('Ina');
Insert into CIPRIAN.NUMESG (N) values ('Ioana');
Insert into CIPRIAN.NUMESG (N) values ('Ioanina');
Insert into CIPRIAN.NUMESG (N) values ('Iolanda');
Insert into CIPRIAN.NUMESG (N) values ('Ionela');
Insert into CIPRIAN.NUMESG (N) values ('Ionelia');
Insert into CIPRIAN.NUMESG (N) values ('Iosefina');
Insert into CIPRIAN.NUMESG (N) values ('Irina');
Insert into CIPRIAN.NUMESG (N) values ('Iridenta');
Insert into CIPRIAN.NUMESG (N) values ('Iris');
Insert into CIPRIAN.NUMESG (N) values ('Isabela');
Insert into CIPRIAN.NUMESG (N) values ('Iulia');
Insert into CIPRIAN.NUMESG (N) values ('Iuliana');
Insert into CIPRIAN.NUMESG (N) values ('Iustina');
Insert into CIPRIAN.NUMESG (N) values ('Ivona');
Insert into CIPRIAN.NUMESG (N) values ('Izabela');
Insert into CIPRIAN.NUMESG (N) values ('Jana');
Insert into CIPRIAN.NUMESG (N) values ('Janeta');
Insert into CIPRIAN.NUMESG (N) values ('Janina');
Insert into CIPRIAN.NUMESG (N) values ('Jasmina');
Insert into CIPRIAN.NUMESG (N) values ('Jeana');
Insert into CIPRIAN.NUMESG (N) values ('Julia');
Insert into CIPRIAN.NUMESG (N) values ('Julieta');
Insert into CIPRIAN.NUMESG (N) values ('Larisa');
Insert into CIPRIAN.NUMESG (N) values ('Laura');
Insert into CIPRIAN.NUMESG (N) values ('Laurentia');
Insert into CIPRIAN.NUMESG (N) values ('Lavinia');
Insert into CIPRIAN.NUMESG (N) values ('Lacramioara');
Insert into CIPRIAN.NUMESG (N) values ('Leana');
Insert into CIPRIAN.NUMESG (N) values ('Lelia');
Insert into CIPRIAN.NUMESG (N) values ('Leontina');
Insert into CIPRIAN.NUMESG (N) values ('Leopoldina');
Insert into CIPRIAN.NUMESG (N) values ('Letitia');
Insert into CIPRIAN.NUMESG (N) values ('Lia');
Insert into CIPRIAN.NUMESG (N) values ('Liana');
Insert into CIPRIAN.NUMESG (N) values ('Lidia');
Insert into CIPRIAN.NUMESG (N) values ('Ligia');
Insert into CIPRIAN.NUMESG (N) values ('Lili');
Insert into CIPRIAN.NUMESG (N) values ('Liliana');
Insert into CIPRIAN.NUMESG (N) values ('Lioara');
Insert into CIPRIAN.NUMESG (N) values ('Livia');
Insert into CIPRIAN.NUMESG (N) values ('Loredana');
Insert into CIPRIAN.NUMESG (N) values ('Lorelei');
Insert into CIPRIAN.NUMESG (N) values ('Lorena');
Insert into CIPRIAN.NUMESG (N) values ('Luana');
Insert into CIPRIAN.NUMESG (N) values ('Lucia');
Insert into CIPRIAN.NUMESG (N) values ('Luciana');
Insert into CIPRIAN.NUMESG (N) values ('Lucretia');
Insert into CIPRIAN.NUMESG (N) values ('Ludovica');
Insert into CIPRIAN.NUMESG (N) values ('Ludmila');
Insert into CIPRIAN.NUMESG (N) values ('Luiza');
Insert into CIPRIAN.NUMESG (N) values ('Luminita');
Insert into CIPRIAN.NUMESG (N) values ('Magdalena');
Insert into CIPRIAN.NUMESG (N) values ('Maia');
Insert into CIPRIAN.NUMESG (N) values ('Manuela');
Insert into CIPRIAN.NUMESG (N) values ('Mara');
Insert into CIPRIAN.NUMESG (N) values ('Marcela');
Insert into CIPRIAN.NUMESG (N) values ('Marga');
Insert into CIPRIAN.NUMESG (N) values ('Margareta');
Insert into CIPRIAN.NUMESG (N) values ('Marcheta');
Insert into CIPRIAN.NUMESG (N) values ('Maria');
Insert into CIPRIAN.NUMESG (N) values ('Mariana');
Insert into CIPRIAN.NUMESG (N) values ('Maricica');
Insert into CIPRIAN.NUMESG (N) values ('Marilena');
Insert into CIPRIAN.NUMESG (N) values ('Marina');
Insert into CIPRIAN.NUMESG (N) values ('Marinela');
Insert into CIPRIAN.NUMESG (N) values ('Marioara');
Insert into CIPRIAN.NUMESG (N) values ('Marta');
Insert into CIPRIAN.NUMESG (N) values ('Matilda');
Insert into CIPRIAN.NUMESG (N) values ('Malvina');
Insert into CIPRIAN.NUMESG (N) values ('Madalina');
Insert into CIPRIAN.NUMESG (N) values ('Malina');
Insert into CIPRIAN.NUMESG (N) values ('M?rioara');
Insert into CIPRIAN.NUMESG (N) values ('Mariuca');
Insert into CIPRIAN.NUMESG (N) values ('Melania');
Insert into CIPRIAN.NUMESG (N) values ('Melina');
Insert into CIPRIAN.NUMESG (N) values ('Mihaela');
Insert into CIPRIAN.NUMESG (N) values ('Milena');
Insert into CIPRIAN.NUMESG (N) values ('Mina');
Insert into CIPRIAN.NUMESG (N) values ('Minodora');
Insert into CIPRIAN.NUMESG (N) values ('Mioara');
Insert into CIPRIAN.NUMESG (N) values ('Mirabela');
Insert into CIPRIAN.NUMESG (N) values ('Mirela');
Insert into CIPRIAN.NUMESG (N) values ('Mirona');
Insert into CIPRIAN.NUMESG (N) values ('Miruna');
Insert into CIPRIAN.NUMESG (N) values ('Mona');
Insert into CIPRIAN.NUMESG (N) values ('Monalisa');
Insert into CIPRIAN.NUMESG (N) values ('Monica');
Insert into CIPRIAN.NUMESG (N) values ('Nadia');
Insert into CIPRIAN.NUMESG (N) values ('Narcisa');
Insert into CIPRIAN.NUMESG (N) values ('Natalia');
Insert into CIPRIAN.NUMESG (N) values ('Natasa');
Insert into CIPRIAN.NUMESG (N) values ('Noemi');
Insert into CIPRIAN.NUMESG (N) values ('Nicoleta');
Insert into CIPRIAN.NUMESG (N) values ('Niculina');
Insert into CIPRIAN.NUMESG (N) values ('Nidia');
Insert into CIPRIAN.NUMESG (N) values ('Nora');
Insert into CIPRIAN.NUMESG (N) values ('Norica');
Insert into CIPRIAN.NUMESG (N) values ('Oana');
Insert into CIPRIAN.NUMESG (N) values ('Octavia');
Insert into CIPRIAN.NUMESG (N) values ('Octaviana');
Insert into CIPRIAN.NUMESG (N) values ('Ofelia');
Insert into CIPRIAN.NUMESG (N) values ('Olga');
Insert into CIPRIAN.NUMESG (N) values ('Olimpia');
Insert into CIPRIAN.NUMESG (N) values ('Olivia');
Insert into CIPRIAN.NUMESG (N) values ('Ortansa');
Insert into CIPRIAN.NUMESG (N) values ('Otilia');
Insert into CIPRIAN.NUMESG (N) values ('Ozana');
Insert into CIPRIAN.NUMESG (N) values ('Pamela');
Insert into CIPRIAN.NUMESG (N) values ('Paraschiva');
REM INSERTING into CIPRIAN.USERHOBBY
SET DEFINE OFF;
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,1);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,3);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,4);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,5);
REM INSERTING into CIPRIAN.USERSOHO
SET DEFINE OFF;
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1155743477821938,'Maria','Anghelache',to_date('03-AUG-95','DD-MON-RR'),'maria.anghelache@yahoo.com',2,'EAAWea65wWZAIBAOjWv9ZAdvrb7NzxJ4HqwSQC7HxHexy5DAqBfttgbF3Mqpi4uiNTISBuT3oTjsXrc7D1lHZB5i7PS5fGpO7FxuLZBHypqpEJq33UaqExxcHvsi31q4Y2l5xln6NnKpLXFOPUnxoB1YdrkFQ65IZD&expires=5183841
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.2.50.50/p50x50/12301546_1041987689197518_5855819531228058744_n.jpg?oh=489bb024c86840aefa4008ea76e7a76e&oe=57DD8CBB');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1628126750843339,'Gabriela','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'gabrielacusm@gmail.com',2,'EAAWea65wWZAIBAOCAF005MZCKhpVz0x8ZCetSw41PXc8pPZB4eqZCecTMwuGbVoQB4bGZCH7Nv7GQvq7VtE70NfG6cJMYnLkovpAeA5Eyf2hHUtOBI8OCePPp6fb7PvCvQOLlem10tL4u6NTZA2EoG00UFBzs5mwRsZD&expires=5167278
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.19.50.50/p50x50/12439219_1554899798166035_1610282242355468738_n.jpg?oh=a7cad59d0235d6396077e4d77158cfe1&oe=57CF3E96');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1097717203618851,'Grosu','Ilie Andrei',to_date('03-AUG-95','DD-MON-RR'),'an3y_capitano@yahoo.com',2,'EAAWea65wWZAIBAHz6PF4TQrDZAtBbXLYk3NjjkgZAi27XVu7GgzEDZA6mZC3Gc6rqovqwOjcV9AhSjYRQ9UtNNBUdrm1eMHPu1RqWK2pN2OZCOyCDBBLDYUUPOjJXZA9Din8DIODmwM3K3cDu3ZBxXbVrufQa4D6m99BIunE4mnfVQZDZD&expires=5183999
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13082690_1085366341520604_6505151982216895306_n.jpg?oh=caa3a8ccd479cd0959a616fe5f3b6a08&oe=579C4B5F');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1343923862291333,'Ciprian','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'cipc_20002002@yahoo.com',1,'EAAWea65wWZAIBAFM49hMgsRC6VTAgbidRWpaDZCOdRmrsm8ngYBlePZAGbVJkyz72RqkEXGpz4QVXXZAF2lpveEy367u6B8uVFib03qQ1EctrUR3XrD9qRazZAJe3k00O5XIIZCqOHqahpAwk4EhcXpmVHuISehZAjbfgEAeAErEAZDZD&expires=5157227
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c8.0.50.50/p50x50/1380170_752111984805860_9520347_n.jpg?oh=6ea4e8295cc81afb84064aac123db4d3&oe=57CFC603');
--------------------------------------------------------
--  Constraints for Table USERSOHO
--------------------------------------------------------

  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("SURNAMEUSER" NOT NULL ENABLE);
  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("NAMEUSER" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger AUTOINCREMENTIDHOBBY
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CIPRIAN"."AUTOINCREMENTIDHOBBY" after insert on Hobby
  declare
    v_lastid number;
  begin
    select max(idHobby) into v_lastid from Hobby;
    update Hobby set idHobby=v_lastid+1 where idHobby=0;
  end;
/
ALTER TRIGGER "CIPRIAN"."AUTOINCREMENTIDHOBBY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AUTOINCREMENTIDPOST
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CIPRIAN"."AUTOINCREMENTIDPOST" after insert on HobbyPost
  declare
    v_lastid number;
  begin
    select max(idPost) into v_lastid from hobbypost;
    update hobbypost set idPost=v_lastid+1 where idPost=0;
  end;
/
ALTER TRIGGER "CIPRIAN"."AUTOINCREMENTIDPOST" ENABLE;
--------------------------------------------------------
--  DDL for Package ADMINSKILLS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CIPRIAN"."ADMINSKILLS" IS
     PROCEDURE setGrade(p_email varchar2, p_grade varchar2);
     PROCEDURE deleteUser(p_email varchar2);
     PROCEDURE approveHobby(p_response number, p_hobbyname varchar2); -- 1 daca da, 0 daca nu
END adminSkills;

/
--------------------------------------------------------
--  DDL for Package GENERATOR
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CIPRIAN"."GENERATOR" IS
     PROCEDURE generateHobbies;
     PROCEDURE generateGrades;
END generator;

/
--------------------------------------------------------
--  DDL for Package USERSKILLS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CIPRIAN"."USERSKILLS" IS
     PROCEDURE loginUser(p_idUser number);
     PROCEDURE addUser (p_idUser number, p_nameUser varchar2, p_surnameUser varchar2, p_dataBirth varchar2, p_email varchar2,p_authToken varchar2,p_authSite varchar2, p_photoURL varchar2);
     PROCEDURE joinToNewHobby(p_idUser number, p_idHobby number);
     PROCEDURE postIt(p_idUser number, p_hobby varchar2, p_message varchar2);
     PROCEDURE updateUser(p_idUser number, p_name varchar2, p_surname varchar2, p_date_of_birth varchar2, p_email varchar2,p_authToken varchar2,p_authSite varchar2, p_photoURL varchar);
     PROCEDURE newHobby(p_nameHobby varchar2, p_description varchar2,p_videoUrl varchar2,p_imageUrl varchar2);
END userSkills;

/
--------------------------------------------------------
--  DDL for Package VALIDATOR
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CIPRIAN"."VALIDATOR" IS
     FUNCTION validateFlName (p_name varchar2) return number;
     FUNCTION validateBirthDate (p_bd date) return number;
     FUNCTION validateEmail (p_email varchar2) return number;
END validator;

/
--------------------------------------------------------
--  DDL for Package Body ADMINSKILLS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CIPRIAN"."ADMINSKILLS" IS
    email_inexistent EXCEPTION;
        PRAGMA EXCEPTION_INIT(email_inexistent, -20030);
    email_invalid EXCEPTION;
        PRAGMA EXCEPTION_INIT(email_invalid, -20031);
      
    PROCEDURE setGrade(p_email varchar2, p_grade varchar2) as
        grad_inexistent EXCEPTION;
            PRAGMA EXCEPTION_INIT(grad_inexistent, -20020);
        denumire_grad_invalida EXCEPTION;
            PRAGMA EXCEPTION_INIT(denumire_grad_invalida, -20021);
        user_invalid EXCEPTION;
            PRAGMA EXCEPTION_INIT(user_invalid, -20028);
        v_corectName number;
      BEGIN
        v_corectName:=validator.validateEmail(p_email);
            if(v_corectName=0) then raise email_invalid;
            else
              select count(*) into v_corectName from UsersOho where email=p_email;
              if(v_corectName = 0) then raise email_inexistent;
              else
                select idGrad into v_corectName from UsersOho where email=p_email;
                if(v_corectName=1) then raise user_invalid;
                  else
                  v_corectName:=validator.validateFlName(p_grade);
                  if(v_corectName=0) then raise denumire_grad_invalida;
                    else
                      select count(*) into v_corectName from grades where numegrad=p_grade;
                      if(v_corectName=0) then raise grad_inexistent;
                        else
                          select idGrad into v_corectName from grades where numegrad=p_grade;
                          update UsersOho set idGrad=v_corectName where email=p_email;
                      end if;
                    end if;
                  end if;
            end if;
          end if;
        EXCEPTION
            WHEN email_invalid THEN
              raise_application_error (-20031,'Email-ul '|| p_email || ' este invalid.');
            WHEN email_inexistent THEN
              raise_application_error (-20030, 'Utilizatorul cu email-ul '|| p_email || ' nu exista in baza de date.');
            WHEN denumire_grad_invalida THEN
              raise_application_error (-20022,'Nume grad invalid.');
            WHEN grad_inexistent THEN
              raise_application_error (-20023, 'Gradul ' || p_grade || ' nu exista in baza de date.');
            WHEN user_invalid THEN
              raise_application_error (-20028,'Gradul acestui user nu poate fi schimbat!!!');
      END setGrade;
    
    PROCEDURE deleteUser(p_email varchar2) as
    delete_admin EXCEPTION;
            PRAGMA EXCEPTION_INIT(delete_admin, -20024);
        v_flag number;
      BEGIN
        v_flag:=validator.validateEmail(p_email);
        if(v_flag=0) then raise email_invalid;
          else
          select count(*) into v_flag from usersoho where email=p_email;
          if(v_flag=0) then raise email_inexistent;
          else
            select idGrad into v_flag from UsersOho where email=p_email;
            if(v_flag = 1) then raise delete_admin;
              else
              delete from UsersOho where email=p_email;
            end if;
          end if;
        end if;
      EXCEPTION
            WHEN email_invalid THEN
              raise_application_error (-20030,'Email-ul '|| p_email || ' este invalid.');
            WHEN email_inexistent THEN
              raise_application_error (-20031, 'Utilizatorul cu email-ul '|| p_email || ' nu exista in baza de date.');
            WHEN delete_admin THEN
              raise_application_error (-20024,'Operatie ilegala. Nu puteti sterge un cont de administrator!!!');
      END deleteUser;
      -- daca un hobby approve 1 si se apeleaza approveHobby(0, numeHobby) pentru un acest hobby cu approve =1 , atunci acest hobby va fi eliminat
    PROCEDURE approveHobby(p_response number, p_hobbyname varchar2) as
    invalid_response EXCEPTION;
       PRAGMA EXCEPTION_INIT(invalid_response, -20016);
    hobbyname_invalid EXCEPTION;
       PRAGMA EXCEPTION_INIT(hobbyname_invalid, -20017);
    hobbyname_inexistent EXCEPTION;
       PRAGMA EXCEPTION_INIT(hobbyname_inexistent, -20018);
    v_flag number;
    BEGIN
      v_flag:=validator.validateFlName(p_hobbyname);
    if(v_flag=0) then raise hobbyname_invalid;
      else
        select count(*) into v_flag from Hobby where hobbyname=p_hobbyname;
        if(v_flag=0) then raise hobbyname_inexistent;
        else
          if(p_response > 1 or p_response < 0) then raise invalid_response;
          else
            if(p_response = 1) then update Hobby set approved=1 where hobbyname=p_hobbyname; end if;
            if(p_response = 0) then delete from Hobby where hobbyname=p_hobbyname; end if;
          end if;
        end if;
    end if;
    EXCEPTION
    WHEN invalid_response THEN
              raise_application_error (-20016,'Valoare de validare trebuie sa fie 0 sau 1.');
    WHEN hobbyname_invalid THEN
              raise_application_error (-20017,'Hobby-ul cu numele '|| p_hobbyname || ' este invalid.');
    WHEN hobbyname_inexistent THEN
              raise_application_error (-20018,'Hobby-ul '|| p_hobbyname || ' nu exista in baza de date.');
    END approveHobby;
END adminSkills;

/
--------------------------------------------------------
--  DDL for Package Body GENERATOR
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CIPRIAN"."GENERATOR" IS
  FUNCTION passwordGenerator RETURN varchar2 AS
    v_caracter varchar2(40);
    v_rezultat varchar2(10);
    begin
      v_caracter:='abcdefghijklmnopqrstuvwxyz0123456789';
      for i in 1..8 loop
        v_rezultat:=v_rezultat||substr(v_caracter,trunc(dbms_random.value(1,length(v_caracter)+1)),1);
      end loop;
    return v_rezultat;
END passwordGenerator;

  PROCEDURE generateUsers IS
    v_n1 varchar2(20);
    v_n2 varchar2(20);
    v_count number:=1; -- ar cam da 1664 recorduri
    v_date_of_birth date;
    BEGIN
      for i in (select * from numeFamSg) loop
        for j in (select * from numeSg) loop
          SELECT TO_DATE(TRUNC( DBMS_RANDOM.VALUE(TO_CHAR(DATE '1970-01-01','J') ,TO_CHAR(DATE '2011-01-01', 'J'))),'J') into v_date_of_birth FROM DUAL;
          INSERT INTO UsersOho values(v_count,i.nf, j.n,v_date_of_birth,lower(j.n||'.'||i.nf||'@oho.ro'), lower(j.n||'.'||i.nf), passwordGenerator,2);
          commit;
          v_count:=v_count+1;
        end loop;
      end loop;
        INSERT INTO UsersOho values(v_count,'Aga', 'Alexandru',to_date('01-01-1995','yyyy-mm-dd'),'alexandru.aga@oho.ro', 'alexandru.aga', 'alexa',1);
        v_count:=v_count+1;
        INSERT INTO UsersOho values(v_count,'Cusmuliuc', 'Ciprian',to_date('01-01-1995','yyyy-mm-dd'),'ciprian.cusmuliuc@oho.ro', 'ciprian.cusmuliuc', 'ciprianc',1);
        v_count:=v_count+1;
        INSERT INTO UsersOho values(v_count,'Grosu','Ilie',to_date('01-01-1995','yyyy-mm-dd'),'ilie.grosu@oho.ro', 'ilie.grosu', 'ilieg',1);
        v_count:=v_count+1;
        INSERT INTO UsersOho values(v_count,'Tanaselea','Alexandru',to_date('01-01-1995','yyyy-mm-dd'),'alexandru.tanaselea@oho.ro', 'alexandru.tanaselea', 'alext',1);
        v_count:=v_count+1;
        INSERT INTO UsersOho values(v_count,'admin','admin',to_date('01-01-1995','yyyy-mm-dd'),'admin@oho.ro', 'admin', 'admin',1);
        v_count:=v_count+1;
    END generateUsers;
    
    PROCEDURE generateHobbies IS
    BEGIN
      INSERT INTO Hobby VALUES (1, 'Fotbal','Fotbalul este un sport de echipã ce se disputã între douã echipe alcãtuite din 11 jucãtori fiecare. La începutul secolului al XXI-lea era jucat de peste 250 de milioane de jucãtori în peste 200 de ?ãri, ceea ce îl face cel mai popular sport din lume');
      INSERT INTO Hobby VALUES (2, 'Box','Boxul (sau pugilismul) este un sport mar?ial strãvechi (probabil cel mai vechi sport mar?ial, cu origini preistorice), în care doi concuren?i, cu greutã?i similare, luptã cu ajutorul pumnilor, într-o serie de reprize, numite runde. Victoria este ob?inutã in urma punctelor date pentru lovituri de catre juriu, sau atunci când adversarul este doborât la pâmânt ?i nu reu?e?te sã se ridice înainte ca arbitrul sã termine de numãrat pânã la 10, (englezã Knockout sau KO) sau când adversarul este prea rãnit pentru a continua (englezã Technical Knockout sau TKO).');
      INSERT INTO Hobby VALUES (3, 'Inot','Înotul este o mi?care de deplasare a oamenilor sau a animalelor prin apã, de obicei fãrã niciun fel de asisten?ã artificialã. Tipurile sau stilurile de înot sunt craul, bras, fluture sau spate, dar ?i anumite derivate ale acestora, de exemplu bras lung, spate dublu etc.');
      INSERT INTO Hobby VALUES (4, 'Baschet','Baschetul este unul dintre cele mai rãspândite sporturi de echipã din lume; se caracterizeazã prin fine?ea, precizia ?i fantezia exerci?iilor tehnice ?i tactice, prin talia înaltã ?i calitã?ile fizice deosebite ale sportivilor, toate acestea implicate într-o luptã sportivã care pretinde spirit de echipã ?i de sacrificiu, inteligen?ã ?i rezisten?ã nervoasã.');
      INSERT INTO Hobby VALUES (5, 'Tenis','Tenisul este un sport jucat fie între doi jucãtori (simplu), fie între douã echipe a câte doi jucãtori (dublu). Jucãtorii folosesc o rachetã pe bazã de racordaj pentru a lovi o minge de cauciuc acoperitã cu pâslã peste fileu, mingea trebuind sã ajungã în terenul adversarului.');
      INSERT INTO Hobby VALUES (6, 'Pescuit','Pescuitul este activitatea de a prinde cu ajutorul unor instrumente speciale diverse varietã?i de pe?te sau alte vietã?i acvatice. Pescuitul mai poate fi considerat ca o extrac?ie a organismelor acvatice, din mediul în care au crescut, cu diverse scopuri, precum alimentare, recreere (pescuit sportiv), ornamentare (captura speciilor ornamentale) sau ?eluri industriale.');
      INSERT INTO Hobby VALUES (7, 'Dans','Dansul este un mijloc artistic de exprimare a unui mesaj printr-o succesiune de mi?cãri ritmice, variate ?i expresive ale corpului, executate în ritmul muzicii, având caracter religios, de artã sau de divertisment.');
      INSERT INTO Hobby VALUES (8, 'Muzica','Muzica (din gr. mousik?) este arta combinãrii notelor în succesiune ?i simultan într-o formã plãcutã estetic, organizarea ritmicã a acestor note ?i integrarea lor într-o lucrare completã.');
      INSERT INTO Hobby VALUES (9, 'Bucatarie','Bucãtãria reprezintã arta ?i tehnica preparãrii alimentelor destinate consumului uman. Bucãtãria poate cuprinde toate no?iunile practice referitoare la ingrediente, prepararea lor, instrumentele folosite, modurile de gãtit ?i diferen?ele între acestea. Este asociatã artei mesei ?i gastronomiei.');
      INSERT INTO Hobby VALUES (10, 'Gradinarit','Grãdinãritul reprezintã activitatea de cultivare a unor plante ornamentale sau nu în spa?ii special amenajate (grãdini). Grãdinãritul poate fi realizat de amatori sau grãdinari profesioni?ti.');
    END generateHobbies;
    
    PROCEDURE generateUserHobby IS
    v_nr number:=1;
    v_count number;
    v_countHobbies number;
    BEGIN
      select count(*) into v_count from usersoho;
      select count(*) into v_countHobbies from Hobby;
      for i in 1..v_count loop
        insert into UserHobby values (v_nr,trunc(dbms_random.value(1, v_countHobbies+1)));
        v_nr:=v_nr+1;
      end loop;
    END generateUserHobby;
    
    PROCEDURE generateGrades IS
    BEGIN
      insert into grades values (1, 'Administrator');
      insert into grades values (2, 'PowerUser');
    END generateGrades;
END generator;

/
--------------------------------------------------------
--  DDL for Package Body USERSKILLS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CIPRIAN"."USERSKILLS" IS
  data_nasterii_invalida EXCEPTION;
    PRAGMA EXCEPTION_INIT(data_nasterii_invalida, -20004);
  email_invalid EXCEPTION;
    PRAGMA EXCEPTION_INIT(email_invalid, -20005);
  user_existent EXCEPTION;
    PRAGMA EXCEPTION_INIT(user_existent, -20001);
  user_inexistent EXCEPTION;
    PRAGMA EXCEPTION_INIT(user_inexistent, -20012);
              
    Procedure loginUser (p_idUser number) as
      login_failed EXCEPTION;
        PRAGMA EXCEPTION_INIT(login_failed, -20006);
      v_idUser number;
      begin
      select idUser into v_idUser from usersoho where idUser=p_idUser;
      if(v_idUser is null) then
         raise login_failed; end if;
        EXCEPTION
            WHEN login_failed THEN
              raise_application_error (-20006,'Date de autentificare invalide.');
    END loginUser;
    
        -- nu mai validez anumite date, sunt preluate de la facebook
    PROCEDURE addUser (p_idUser number, p_nameUser varchar2, p_surnameUser varchar2, p_dataBirth varchar2, p_email varchar2,p_authToken varchar2,p_authSite varchar2,p_photoURL varchar2) IS
    user_existent_id EXCEPTION;
        PRAGMA EXCEPTION_INIT(user_existent_id, -20008);
    v_flag number;
    v_nrRowsSameEmail number;
  BEGIN
    select count(*) into v_flag from UsersOho where idUser=p_idUser;
      if(v_flag>0) then raise user_existent_id;
        else
          v_flag:=validator.validateBirthDate(to_date(p_dataBirth,'mm/dd/yyyy'));
          if(v_flag=0) then raise data_nasterii_invalida;
          else
            v_flag:=validator.validateEmail(p_email);
            if(v_flag=0) then raise email_invalid;
            else
                select count(*) into v_nrRowsSameEmail from usersoho where email=p_email;
                if(v_nrRowsSameEmail>0) then raise user_existent;
                else
                  insert into usersoho values (p_idUser, p_nameUser, p_surnameUser, to_date(p_dataBirth,'mm/dd/yyyy'), p_email, 2,p_authToken,p_authSite,p_photoURL);
                end if;
            end if;
          end if;
      end if;
    EXCEPTION
      WHEN data_nasterii_invalida THEN
          raise_application_error (-20004,'Data ' || p_dataBirth || ' nu poate fi adaugata in baza de date.');
      WHEN email_invalid THEN
          raise_application_error (-20005,'Email-ul ' || p_email || ' nu poate fi adaugat in baza de date.');
      WHEN user_existent THEN
          raise_application_error (-20001,'Utilizatorul cu email-ul ' || p_email || ' nu poate fi adaugat in baza de date.');
      WHEN user_existent_id THEN
          raise_application_error (-20008, 'Acest user exista deja in baza de date.');
  END addUser;
    
    PROCEDURE joinToNewHobby(p_idUser number, p_idHobby number) as
         hobby_inexistent EXCEPTION;
            PRAGMA EXCEPTION_INIT(hobby_inexistent, -20011);
            v_existHobby number;
            v_rightName number;
            v_existUser number;
        BEGIN
          select count(*) into v_existUser from UsersOho where idUser=p_idUser;
          if(v_existUser=0) then raise user_inexistent;
            else
              select count(*) into v_existHobby from Hobby where idHobby=p_idHobby and approved=1;
              if(v_existHobby=0) then raise hobby_inexistent;
                else
                  insert into userhobby values(p_idUser, p_idHobby);                    -- id-ul hobbiului dorit
              end if;
            end if;
        EXCEPTION
              WHEN hobby_inexistent THEN
                raise_application_error (-20011, 'Hobby-ul cu id ul '|| p_idHobby || ' nu exista in baza de date.');
              WHEN user_inexistent THEN
                raise_application_error (-20012, 'Utilizatorul cu id-ul '|| p_idUser || ' nu exista in baza de date.');
        END joinToNewHobby;
    
     PROCEDURE postIt(p_idUser number, p_hobby varchar2, p_message varchar2) as
        denumire_hobby_invalida EXCEPTION;
          PRAGMA EXCEPTION_INIT(denumire_hobby_invalida, -20040);
        hobby_inexistent EXCEPTION;
          PRAGMA EXCEPTION_INIT(hobby_inexistent, -20041);
        hobby_necorespunzator EXCEPTION;
          PRAGMA EXCEPTION_INIT(hobby_necorespunzator, -20042);
          v_flag number;
          v_idHobby number;
      BEGIN
        if(v_flag=0) then raise email_invalid;
        else
          select count(*) into v_flag from usersoho where idUser=p_idUser;
          if(v_flag=0) then raise user_inexistent;
          else
              select count(*) into v_flag from Hobby where hobbyname=p_hobby and approved=1;
              if(v_flag=0) then raise hobby_inexistent;
              else
                select idHobby into v_idHobby from hobby where hobbyname=p_hobby;
                select count(*) into v_flag from userhobby where idUser=p_idUser and idHobby=v_idHobby;
                if(v_flag=0) then raise hobby_necorespunzator;
                else
                  insert into hobbypost values(0,v_idHobby, p_idUser, p_message, current_date);
                end if;
              end if;
          end if;
        end if;
        EXCEPTION
            WHEN user_inexistent THEN
              raise_application_error (-20012, 'Utilizatorul cu id-ul '|| p_idUser || ' nu exista in baza de date.');
            WHEN denumire_hobby_invalida THEN
              raise_application_error (-20040,'Hobby-ul cu numele '|| p_hobby || ' nu poate fi adaugat in baza de date.');
            WHEN hobby_inexistent THEN
              raise_application_error (-20041,'Hobby-ul cu numele '|| p_hobby || ' nu exista in baza de date.');
            WHEN hobby_necorespunzator THEN
              raise_application_error (-20042, 'Userul cu cu id-ul '|| p_idUser  || ' nu poate posta in hobby-ul ' || p_hobby || ' .');
      END postIt;
      
      -- aceasta procedura se apleaza doar daca login-ul s-a realizat cu succes!!!! ==========================================
   PROCEDURE updateUser(p_idUser number, p_name varchar2, p_surname varchar2, p_date_of_birth varchar2, p_email varchar2,p_authToken varchar2,p_authSite varchar2, p_photoURL varchar) AS 
                                                -- asta e automata daca detecteaza modificari
        user_invalid EXCEPTION;
          PRAGMA EXCEPTION_INIT(user_invalid, -20045);
        v_CursorID NUMBER; -- Variable assigned to value from OPEN_CURSOR
        v_CreateTableString VARCHAR2(4000); -- SQL stored as string to create table
        v_NUMRows INTEGER; -- Number of rows processed - of no use
        v_flag number;
        v_set varchar2(4000):='';
        v_nume varchar2(50);
        v_prenume varchar2(50);
        v_birth varchar2(20);
        v_email varchar2(50);
      BEGIN
            select count(*) into v_flag from UsersOho where idUser=p_idUser;
            if(v_flag=0) then raise user_invalid;
              else
                  select nameUser, surnameUser, date_of_birth,email into v_nume, v_prenume, v_birth, v_email
                      from usersoho where idUser=p_idUser; 
                if(v_nume <> p_name) then
                      v_set:=v_set||' nameuser = '''||p_name||''' ,';
                  end if;
                 if(v_prenume <> p_surname) then
                    v_set:=v_set||' surnameuser = '''||p_surname||''' ,';
                 end if;
                 if(v_email <> p_email) then
                    v_set:=v_set||' email = '''||p_email||''' ,';
                 end if;
                 if(p_date_of_birth <> v_birth) then
                    v_set:=v_set||' date_of_birth = to_date('''||p_date_of_birth||''',''mm/dd/yyyy'') ,';
                 end if;--p_authToken varchar2,p_authSite varchar2, p_photoURL varchar
                    v_set:=v_set||' authToken='''||p_authToken||''' , authSite='''||p_authSite||''' , photoURL='''||p_photoURL||''' ';
                 if (v_set is not null) then
                    -- v_set:=substr(v_set, 0, length(v_set)-2);
                     v_CursorID := DBMS_SQL.OPEN_CURSOR; -- Get the Cursor ID
                     v_CreateTableString := ' UPDATE UsersOho SET' || v_set || ' WHERE idUser= '''|| p_idUser ||'''';
                      -- Write SQL code to create table  -- pun un A in fata, nu vrea sa recunoasca un numar ca nume de tabela
                     DBMS_SQL.PARSE(v_CursorID,v_CreateTableString,DBMS_SQL.V7);
                         /* Perform syntax error checking */
                     v_NumRows := DBMS_SQL.EXECUTE(v_CursorID);
                        /* Execute the SQL code  */
                     DBMS_SQL.CLOSE_CURSOR(v_CursorID); -- Close the cursor
                  end if;
          end if;
          EXCEPTION
            WHEN user_invalid THEN
            raise_application_error (-20045,'User invalid.'); 
      END updateUser;
    
  PROCEDURE newHobby(p_nameHobby varchar2, p_description varchar2,p_videoUrl varchar2,p_imageUrl varchar2) is
      nume_hobby_invalid EXCEPTION;
        PRAGMA EXCEPTION_INIT(nume_hobby_invalid, -20035);
      nume_hobby_existent EXCEPTION;
        PRAGMA EXCEPTION_INIT(nume_hobby_existent, -20036);
        v_flag number;
        v_description varchar2(1500);
  BEGIN
      v_flag:=validator.validateFlName(p_nameHobby);
      if(v_flag=0) then raise nume_hobby_invalid;
        else 
        select count(*) into v_flag from Hobby where hobbyname=p_nameHobby;
        if(v_flag>0) then raise nume_hobby_existent;
          else
            if(length(p_description)>1497) then v_description:=substr(p_description,0,1497)||'...';
              else
                v_description:=p_description;
            end if;
            insert into hobby values(0,p_nameHobby,v_description,p_videoUrl ,p_imageUrl,0);
        end if;
      end if;
    EXCEPTION
     WHEN nume_hobby_invalid THEN
       raise_application_error (-20035,'Denumirea '|| p_nameHobby || ' nu poate fi atribuita unui hobby.');   
     WHEN nume_hobby_existent THEN
       raise_application_error (-20036,'Hobby-ul cu numele '|| p_nameHobby ||' exista in baza de date.');
  END newHobby;
END userSkills;

/
--------------------------------------------------------
--  DDL for Package Body VALIDATOR
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "CIPRIAN"."VALIDATOR" IS
    null_parameter EXCEPTION;
        PRAGMA EXCEPTION_INIT(null_parameter, -20060);
    v_error varchar2(60):='Parametrul functiei de validare nu poate fi null.';
        
    FUNCTION validateFlName (p_name varchar2) RETURN number AS
       v_countLetters number:=0;
    BEGIN
      if(p_name is null) then raise null_parameter;
        else
         for i in 1..length(p_name) loop
          if(substr(p_name,i,1)>='a' and substr(p_name,i,1)<='z') then v_countLetters:=v_countLetters+1; end if;
          if(substr(p_name,i,1)>='A' and substr(p_name,i,1)<='Z') then v_countLetters:=v_countLetters+1; end if;
         end loop;
         if(v_countLetters=length(p_name)) then return 1; end if;
       end if;
       return 0;
       EXCEPTION
            WHEN null_parameter THEN
              raise_application_error (-20060,v_error);
    END validateFlName;
    
    FUNCTION validateBirthDate(p_bd date) return number as
      v_oldy date;
    BEGIN
          v_oldy:=to_date('01/01/1800','mm/dd/yyyy');
      if (p_bd > v_oldy) then return 1; end if;
        return 0;
    END validateBirthDate;
    
    FUNCTION validateEmail(p_email varchar2) return number as
      v_positionAT number:=-1;
      v_positionDOT number:=-1;
      v_containsAT number:=0;
      v_containsDOT number:=0;
      BEGIN
      if(p_email is null) then raise null_parameter;
        else
          for i in 1..length(p_email) loop
            if(substr(p_email,i,1)='@') then v_positionAT:=i; v_containsAT:=1; end if;
            if(substr(p_email,i,1)='.') then v_positionDOT:=i; v_containsDOT:=1; end if;
            if(substr(p_email,i,1)=' ') then return 0; end if;
          end loop;
            if(v_containsAT=1 and v_containsDOT=1 and v_positionDOT-v_positionAT>=2 and v_positionDOT < length(p_email)-1) then return 1; end if;
      end if;
      return 0;
      EXCEPTION
            WHEN null_parameter THEN
              raise_application_error (-20060,v_error);
      END validateEmail;
END validator;

/
--------------------------------------------------------
--  DDL for Procedure GENERATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."GENERATE" as
BEGIN
  HOBBY_CSV;
  HOBBYPOST_CSV;
  USERHOBBY_CSV;
  USERSOHO_CSV;
  GRADES_CSV;
END generate;

/
--------------------------------------------------------
--  DDL for Procedure GRADES_CSV
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."GRADES_CSV" AS
  CURSOR c_data IS
    SELECT idgrad,
           numegrad
    FROM   grades
    ORDER BY idgrad;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'grades.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDGrad,NumeGrad');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.idgrad     || ',' ||
                      cur_rec1.numegrad);
  END LOOP;
  UTL_FILE.FCLOSE(v_file);
  
EXCEPTION
    
    WHEN UTL_FILE.INVALID_PATH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20000, 'File location is invalid.');
    
  WHEN UTL_FILE.INVALID_MODE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20001, 'The open_mode parameter in FOPEN is invalid.');

  WHEN UTL_FILE.INVALID_FILEHANDLE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20002, 'File handle is invalid.');

  WHEN UTL_FILE.INVALID_OPERATION THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20003, 'File could not be opened or operated on as requested.');

  WHEN UTL_FILE.READ_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20004, 'Operating system error occurred during the read operation.');

  WHEN UTL_FILE.WRITE_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20005, 'Operating system error occurred during the write operation.');

  WHEN UTL_FILE.INTERNAL_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20006, 'Unspecified PL/SQL error.');

  WHEN UTL_FILE.CHARSETMISMATCH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20007, 'A file is opened using FOPEN_NCHAR, but later I/O ' ||
                                    'operations use nonchar functions such as PUTF or GET_LINE.');

  WHEN UTL_FILE.FILE_OPEN THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20008, 'The requested operation failed because the file is open.');

  WHEN UTL_FILE.INVALID_MAXLINESIZE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20009, 'The MAX_LINESIZE value for FOPEN() is invalid; it should ' || 
                                    'be within the range 1 to 32767.');

  WHEN UTL_FILE.INVALID_FILENAME THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20010, 'The filename parameter is invalid.');

  WHEN UTL_FILE.ACCESS_DENIED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20011, 'Permission to access to the file location is denied.');

  WHEN UTL_FILE.INVALID_OFFSET THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20012, 'The ABSOLUTE_OFFSET parameter for FSEEK() is invalid; ' ||
                                    'it should be greater than 0 and less than the total ' ||
                                    'number of bytes in the file.');

  WHEN UTL_FILE.DELETE_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20013, 'The requested file delete operation failed.');

  WHEN UTL_FILE.RENAME_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20014, 'The requested file rename operation failed.');

  WHEN OTHERS THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE;
END;

/
--------------------------------------------------------
--  DDL for Procedure HOBBYPOST_CSV
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."HOBBYPOST_CSV" AS
  CURSOR c_data IS
    SELECT idpost,
           idhobby,
           iduser,
           message,
           date_of_post
    FROM   hobbypost
    ORDER BY idpost;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'hobbypost.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDPost,IDHobby,IDUser,Message,DateOfPost');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.idpost     || ',' ||
                      cur_rec1.idhobby    || ',' ||
                      cur_rec1.iduser    || ',' ||
                      cur_rec1.message    || ',' ||
                      cur_rec1.date_of_post);
  END LOOP;
  UTL_FILE.FCLOSE(v_file);
  
EXCEPTION
    
    WHEN UTL_FILE.INVALID_PATH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20000, 'File location is invalid.');
    
  WHEN UTL_FILE.INVALID_MODE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20001, 'The open_mode parameter in FOPEN is invalid.');

  WHEN UTL_FILE.INVALID_FILEHANDLE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20002, 'File handle is invalid.');

  WHEN UTL_FILE.INVALID_OPERATION THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20003, 'File could not be opened or operated on as requested.');

  WHEN UTL_FILE.READ_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20004, 'Operating system error occurred during the read operation.');

  WHEN UTL_FILE.WRITE_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20005, 'Operating system error occurred during the write operation.');

  WHEN UTL_FILE.INTERNAL_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20006, 'Unspecified PL/SQL error.');

  WHEN UTL_FILE.CHARSETMISMATCH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20007, 'A file is opened using FOPEN_NCHAR, but later I/O ' ||
                                    'operations use nonchar functions such as PUTF or GET_LINE.');

  WHEN UTL_FILE.FILE_OPEN THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20008, 'The requested operation failed because the file is open.');

  WHEN UTL_FILE.INVALID_MAXLINESIZE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20009, 'The MAX_LINESIZE value for FOPEN() is invalid; it should ' || 
                                    'be within the range 1 to 32767.');

  WHEN UTL_FILE.INVALID_FILENAME THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20010, 'The filename parameter is invalid.');

  WHEN UTL_FILE.ACCESS_DENIED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20011, 'Permission to access to the file location is denied.');

  WHEN UTL_FILE.INVALID_OFFSET THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20012, 'The ABSOLUTE_OFFSET parameter for FSEEK() is invalid; ' ||
                                    'it should be greater than 0 and less than the total ' ||
                                    'number of bytes in the file.');

  WHEN UTL_FILE.DELETE_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20013, 'The requested file delete operation failed.');

  WHEN UTL_FILE.RENAME_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20014, 'The requested file rename operation failed.');

  WHEN OTHERS THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE;
END;

/
--------------------------------------------------------
--  DDL for Procedure HOBBY_CSV
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."HOBBY_CSV" AS
  CURSOR c_data IS
    SELECT idhobby,
           hobbyname,
           description
    FROM   hobby
    ORDER BY idhobby;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'hobby.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDHobby,HobbyName,Description');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.idhobby    || ',' ||
                      cur_rec1.hobbyname    || ',' ||
                      cur_rec1.description);
  END LOOP;
  UTL_FILE.FCLOSE(v_file);
  
EXCEPTION
    
    WHEN UTL_FILE.INVALID_PATH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20000, 'File location is invalid.');
    
  WHEN UTL_FILE.INVALID_MODE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20001, 'The open_mode parameter in FOPEN is invalid.');

  WHEN UTL_FILE.INVALID_FILEHANDLE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20002, 'File handle is invalid.');

  WHEN UTL_FILE.INVALID_OPERATION THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20003, 'File could not be opened or operated on as requested.');

  WHEN UTL_FILE.READ_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20004, 'Operating system error occurred during the read operation.');

  WHEN UTL_FILE.WRITE_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20005, 'Operating system error occurred during the write operation.');

  WHEN UTL_FILE.INTERNAL_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20006, 'Unspecified PL/SQL error.');

  WHEN UTL_FILE.CHARSETMISMATCH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20007, 'A file is opened using FOPEN_NCHAR, but later I/O ' ||
                                    'operations use nonchar functions such as PUTF or GET_LINE.');

  WHEN UTL_FILE.FILE_OPEN THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20008, 'The requested operation failed because the file is open.');

  WHEN UTL_FILE.INVALID_MAXLINESIZE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20009, 'The MAX_LINESIZE value for FOPEN() is invalid; it should ' || 
                                    'be within the range 1 to 32767.');

  WHEN UTL_FILE.INVALID_FILENAME THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20010, 'The filename parameter is invalid.');

  WHEN UTL_FILE.ACCESS_DENIED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20011, 'Permission to access to the file location is denied.');

  WHEN UTL_FILE.INVALID_OFFSET THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20012, 'The ABSOLUTE_OFFSET parameter for FSEEK() is invalid; ' ||
                                    'it should be greater than 0 and less than the total ' ||
                                    'number of bytes in the file.');

  WHEN UTL_FILE.DELETE_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20013, 'The requested file delete operation failed.');

  WHEN UTL_FILE.RENAME_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20014, 'The requested file rename operation failed.');

  WHEN OTHERS THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE;
END;

/
--------------------------------------------------------
--  DDL for Procedure PAGINARE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."PAGINARE" (v_oprire IN integer,c1 OUT SYS_REFCURSOR)  as
  v_max_rownum number:=v_oprire*10+10;
  v_max_rn number:=v_oprire*10;
  topNquery varchar2(200);
begin
  open c1 for SELECT *
  FROM ( SELECT tmp.*, rownum rn
           FROM ( SELECT *
                    FROM usersoho
                   ORDER BY iduser ASC
                ) tmp
          WHERE rownum <=v_max_rownum
          ) 
          WHERE rn >v_max_rn;
end paginare;

/
--------------------------------------------------------
--  DDL for Procedure PAGINARE_HOBBY_RECOMANDAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."PAGINARE_HOBBY_RECOMANDAT" (v_oprire IN integer, p_idUser number, c1 OUT sys_refcursor) as
  v_max_rownum number:=v_oprire*2+2;
  v_max_rn number:=v_oprire*2;
begin
  open c1 for SELECT *
  FROM ( SELECT tmp.*, rownum rn
           FROM ( select * from hobby h1 where h1.idHobby in 
           (select * from (select * from ( (select idHobby from userHobby where idUser in (
            SELECT  B.idUser FROM userhobby B WHERE b.idHobby =
                  (SELECT * FROM (select idHobby from userHobby where idUser=p_idUser) A 
                                            WHERE A.idHobby = B.idHobby and b.idUser<>p_idUser)
                      )) MINUS select idHobby from userhobby where idUser=p_idUser)) h2 where h1.idHobby=h2.idHobby)
                ) tmp
          WHERE rownum <=v_max_rownum
          ) 
          WHERE rn >v_max_rn;
end paginare_hobby_recomandat;

/
--------------------------------------------------------
--  DDL for Procedure USERHOBBY_CSV
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."USERHOBBY_CSV" AS
  CURSOR c_data IS
    SELECT iduser,
           idhobby
    FROM   userhobby
    ORDER BY iduser;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'userhobby.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDUser,IDHobby');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.iduser     || ',' ||
                      cur_rec1.idhobby);
  END LOOP;
  UTL_FILE.FCLOSE(v_file);
  
EXCEPTION
    
    WHEN UTL_FILE.INVALID_PATH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20000, 'File location is invalid.');
    
  WHEN UTL_FILE.INVALID_MODE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20001, 'The open_mode parameter in FOPEN is invalid.');

  WHEN UTL_FILE.INVALID_FILEHANDLE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20002, 'File handle is invalid.');

  WHEN UTL_FILE.INVALID_OPERATION THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20003, 'File could not be opened or operated on as requested.');

  WHEN UTL_FILE.READ_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20004, 'Operating system error occurred during the read operation.');

  WHEN UTL_FILE.WRITE_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20005, 'Operating system error occurred during the write operation.');

  WHEN UTL_FILE.INTERNAL_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20006, 'Unspecified PL/SQL error.');

  WHEN UTL_FILE.CHARSETMISMATCH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20007, 'A file is opened using FOPEN_NCHAR, but later I/O ' ||
                                    'operations use nonchar functions such as PUTF or GET_LINE.');

  WHEN UTL_FILE.FILE_OPEN THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20008, 'The requested operation failed because the file is open.');

  WHEN UTL_FILE.INVALID_MAXLINESIZE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20009, 'The MAX_LINESIZE value for FOPEN() is invalid; it should ' || 
                                    'be within the range 1 to 32767.');

  WHEN UTL_FILE.INVALID_FILENAME THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20010, 'The filename parameter is invalid.');

  WHEN UTL_FILE.ACCESS_DENIED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20011, 'Permission to access to the file location is denied.');

  WHEN UTL_FILE.INVALID_OFFSET THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20012, 'The ABSOLUTE_OFFSET parameter for FSEEK() is invalid; ' ||
                                    'it should be greater than 0 and less than the total ' ||
                                    'number of bytes in the file.');

  WHEN UTL_FILE.DELETE_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20013, 'The requested file delete operation failed.');

  WHEN UTL_FILE.RENAME_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20014, 'The requested file rename operation failed.');

  WHEN OTHERS THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE;
END;

/
--------------------------------------------------------
--  DDL for Procedure USERSOHO_CSV
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."USERSOHO_CSV" AS
  CURSOR c_data IS
    SELECT iduser,
           nameuser,
           surnameuser,
           date_of_birth,
           email,
           username,
           parola,
           idgrad
    FROM   usersoho
    ORDER BY iduser;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'usersoho.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDPost,NameUser,SurnameUser,DateOfBirth,E-mail,Username,Password,IDGrad');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.iduser     || ',' ||
                      cur_rec1.nameuser     || ',' ||
                      cur_rec1.surnameuser     || ',' ||
                      cur_rec1.date_of_birth     || ',' ||
                      cur_rec1.email     || ',' ||
                      cur_rec1.username     || ',' ||
                      cur_rec1.parola     || ',' ||
                      cur_rec1.idgrad);
  END LOOP;
  UTL_FILE.FCLOSE(v_file);
  
EXCEPTION
    
    WHEN UTL_FILE.INVALID_PATH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20000, 'File location is invalid.');
    
  WHEN UTL_FILE.INVALID_MODE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20001, 'The open_mode parameter in FOPEN is invalid.');

  WHEN UTL_FILE.INVALID_FILEHANDLE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20002, 'File handle is invalid.');

  WHEN UTL_FILE.INVALID_OPERATION THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20003, 'File could not be opened or operated on as requested.');

  WHEN UTL_FILE.READ_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20004, 'Operating system error occurred during the read operation.');

  WHEN UTL_FILE.WRITE_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20005, 'Operating system error occurred during the write operation.');

  WHEN UTL_FILE.INTERNAL_ERROR THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20006, 'Unspecified PL/SQL error.');

  WHEN UTL_FILE.CHARSETMISMATCH THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20007, 'A file is opened using FOPEN_NCHAR, but later I/O ' ||
                                    'operations use nonchar functions such as PUTF or GET_LINE.');

  WHEN UTL_FILE.FILE_OPEN THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20008, 'The requested operation failed because the file is open.');

  WHEN UTL_FILE.INVALID_MAXLINESIZE THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20009, 'The MAX_LINESIZE value for FOPEN() is invalid; it should ' || 
                                    'be within the range 1 to 32767.');

  WHEN UTL_FILE.INVALID_FILENAME THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20010, 'The filename parameter is invalid.');

  WHEN UTL_FILE.ACCESS_DENIED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20011, 'Permission to access to the file location is denied.');

  WHEN UTL_FILE.INVALID_OFFSET THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20012, 'The ABSOLUTE_OFFSET parameter for FSEEK() is invalid; ' ||
                                    'it should be greater than 0 and less than the total ' ||
                                    'number of bytes in the file.');

  WHEN UTL_FILE.DELETE_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20013, 'The requested file delete operation failed.');

  WHEN UTL_FILE.RENAME_FAILED THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE_APPLICATION_ERROR(-20014, 'The requested file rename operation failed.');

  WHEN OTHERS THEN
    UTL_FILE.FCLOSE(v_file);
    RAISE;
END;

/
