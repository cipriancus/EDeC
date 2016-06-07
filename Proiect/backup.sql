--------------------------------------------------------
--  File created - Tuesday-June-07-2016   
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
--  DDL for Table GROUPPOST
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."GROUPPOST" 
   (	"IDPOST" NUMBER DEFAULT 0, 
	"IDGROUP" NUMBER, 
	"IDUSER" NUMBER, 
	"MESSAGE" VARCHAR2(500 BYTE), 
	"DATE_OF_POST" DATE DEFAULT current_date
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GROUPS
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."GROUPS" 
   (	"IDGROUP" NUMBER, 
	"GROUPNAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(1500 BYTE)
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
	"VIDEOURL" VARCHAR2(1500 BYTE), 
	"IMAGEURL" VARCHAR2(1500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOBBYGROUP
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."HOBBYGROUP" 
   (	"IDGROUP" NUMBER, 
	"IDHOBBY" NUMBER
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
--  DDL for Table USERGROUP
--------------------------------------------------------

  CREATE TABLE "CIPRIAN"."USERGROUP" 
   (	"IDUSER" NUMBER, 
	"IDGROUP" NUMBER
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
Insert into CIPRIAN.GRADES (IDGRAD,NUMEGRAD) values (1,'Administrator');
REM INSERTING into CIPRIAN.GROUPPOST
SET DEFINE OFF;
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (7,5,1628126750843339,'Ca sa moara fetiliii
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (8,27,1628126750843339,'Deci ce treaba are fotbalul cu ceasurile ? 
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (1,1,1343923862291333,'Petrec',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (3,1,1343923862291333,'Eu
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (4,1,1343923862291333,'Eu sunt smecher
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (5,21,1343923862291333,'Postez peste tot
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (6,21,1343923862291333,'Da chiar peste tot
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.GROUPPOST (IDPOST,IDGROUP,IDUSER,MESSAGE,DATE_OF_POST) values (2,1,1343923862291333,'Sunt Ciprian',to_date('05-JUN-16','DD-MON-RR'));
REM INSERTING into CIPRIAN.GROUPS
SET DEFINE OFF;
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (41,'FJJ','Futsal-Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (42,'JJJJJ','Jogging-Jogging-Jogging-Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (20,'GF','Gardening-Futsal');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (21,'BGF','Box-Gardening-Futsal');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (22,'JJJ','Jogging-Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (1,'BG','Box-Gardening');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (2,'BJ','Box-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (3,'GJ','Gardening-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (4,'BGJ','Box-Gardening-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (5,'FB','Football-Box');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (6,'FS','Football-Swimming');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (7,'FB','Football-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (8,'BS','Box-Swimming');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (9,'BB','Box-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (10,'SB','Swimming-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (11,'FBS','Football-Box-Swimming');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (12,'FBB','Football-Box-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (13,'FSB','Football-Swimming-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (14,'BSB','Box-Swimming-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (15,'FBSB','Football-Box-Swimming-Basketball');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (16,'JJ','Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (17,'BJJ','Box-Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (18,'GJJ','Gardening-Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (19,'BF','Box-Futsal');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (23,'FJ','Futsal-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (24,'BFJ','Box-Futsal-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (25,'GFJ','Gardening-Futsal-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (26,'JJJJ','Jogging-Jogging-Jogging-Jogging');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (27,'FW','Football-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (28,'BW','Box-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (29,'SW','Swimming-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (30,'BW','Basketball-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (31,'FBW','Football-Box-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (32,'FSW','Football-Swimming-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (33,'FBW','Football-Basketball-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (34,'BSW','Box-Swimming-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (35,'BBW','Box-Basketball-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (36,'SBW','Swimming-Basketball-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (37,'FBSW','Football-Box-Swimming-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (38,'FBBW','Football-Box-Basketball-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (39,'BSBW','Box-Swimming-Basketball-Watches');
Insert into CIPRIAN.GROUPS (IDGROUP,GROUPNAME,DESCRIPTION) values (40,'FBSBW','Football-Box-Swimming-Basketball-Watches');
REM INSERTING into CIPRIAN.HOBBY
SET DEFINE OFF;
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (1,'Football','Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word football is understood to refer to whichever form of football is the most popular in the regional context in which the word appears. Sports commonly called ''football'' in certain places include: association football (known as soccer in some countries); gridiron football (specifically American football or Canadian football); Australian rules football; rugby football (either rugby league or rugby union); and Gaelic football.[1][2] These different variations of football are known as football codes.',1,'https://www.youtube.com/embed/-NSvbGxzpKk','http://bucurestifm.ro/wp-content/uploads/sites/2/2015/09/fotbal-2.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (2,'Box','Boxing is a martial art and combat sport in which two people wearing protective gloves throw punches at each other for a predetermined set of time in a boxing ring.

Amateur boxing is both an Olympic and Commonwealth sport and is a common fixture in most international games—it also has its own World Championships. Boxing is supervised by a referee over a series of one- to three-minute intervals called rounds. The result is decided when an opponent is deemed incapable to continue by a referee, is disqualified for breaking a rule, resigns by throwing in a towel, or is pronounced the winner or loser based on the judges'' scorecards at the end of the contest. In the event that both fighters gain equal scores from the judges, the fight is considered a draw (professional boxing). In Olympic boxing, due to the fact that a winner must be declared, in the case of a draw - the judges use technical criteria to choose the most deserving winner of the bout.',1,'https://www.youtube.com/embed/humDRT29mAM','http://www.beyondsports.ro/img/box1.gif');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (3,'Swimming','Human swimming is the self-propulsion of a person through water or another liquid, usually for recreation, sport, exercise, or survival. Locomotion is achieved through coordinated movement of the limbs, the body, or both. Humans can hold their breath underwater and undertake rudimentary locomotive swimming within weeks of birth, as an evolutionary response',1,'https://www.youtube.com/embed/GxlFhK817R8','http://www.ancada.com/_Files/News/Attachments/2011/10/25/inot-95965.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (4,'Basketball','Basketball is a sport played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and 10 feet (3.048 m) high mounted to a backboard at each end.',1,'https://www.youtube.com/embed/J8sWBdHJB2M','http://blog.cursuribaschet.ro/wp-content/uploads/2014/12/baschet-generic-03-500x300-1748x984.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (5,'Tennis','Tennis is a racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent''s court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will.',1,'https://www.youtube.com/embed/lMinfVMfH9k','http://bucurestifm.ro/wp-content/uploads/sites/2/2014/11/Tenis.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (6,'Fishing','Fishing is the activity of trying to catch fish. Fish are normally caught in the wild. Techniques for catching fish include hand gathering, spearing, netting, angling and trapping.

Fishing may include catching other aquatic animals, such as molluscs, cephalopods, crustaceans, and echinoderms. The term is not normally applied to catching farmed fish, or to aquatic mammals, and marine mammals, such as whales, where the term whaling is more appropriate.',1,'https://www.youtube.com/embed/8cVxb2yremw','https://upload.wikimedia.org/wikipedia/commons/b/b9/Stilts_fishermen_Sri_Lanka_02.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (7,'Dance','Dance is a performance art form consisting of purposefully selected sequences of human movement. This movement has aesthetic and symbolic value, and is acknowledged as dance by performers and observers within a particular culture.[nb 1] Dance can be categorized and described by its choreography, by its repertoire of movements, or by its historical period or place of origin.',1,'https://www.youtube.com/embed/W8n6yji9ZOY','https://upload.wikimedia.org/wikipedia/commons/3/38/Two_dancers.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (8,'Music','Music is an art form and cultural activity whose medium is sound and silence. The common elements of music are pitch (which governs melody and harmony), rhythm (and its associated concepts tempo, meter, and articulation), dynamics (loudness and softness), and the sonic qualities of timbre and texture (which are sometimes termed the "color" of a musical sound). Different styles or types of music may emphasize, de-emphasize or omit some of these elements. Music is performed with a vast range of instruments and with vocal techniques ranging from singing to rapping, and there are solely instrumental pieces, solely vocal pieces (such as songs without instrumental accompaniment) and pieces that combine singing and instruments. The word derives from Greek ??????? (mousike; "art of the Muses").[1] In its most general form, the activities describing music as an art form include the production of works of music (songs, tunes, symphonies, and so on), the criticism of music, the study of the history of music, and the aesthetic examination of music.',1,'https://www.youtube.com/embed/7jTyvm27EsE','https://upload.wikimedia.org/wikipedia/commons/e/e3/Billie_Holiday%2C_Downbeat%2C_New_York%2C_N.Y.%2C_ca._Feb._1947_%28William_P._Gottlieb_04251%29.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (9,'Cooking','Cooking or cookery is the art, technology and craft of preparing food for consumption with the use of heat. Cooking techniques and ingredients vary widely across the world, from grilling food over an open fire to using electric stoves, to baking in various types of ovens, reflecting unique environmental, economic, and cultural traditions and trends. The ways or types of cooking also depend on the skill and type of training an individual cook has. Cooking is done both by people in their own dwellings and by professional cooks and chefs in restaurants and other food establishments. Cooking can also occur through chemical reactions without the presence of heat, most notably with ceviche, a traditional South American dish where fish is cooked with the acids in lemon or lime juice.',1,'https://www.youtube.com/embed/VGQSVuNy1r4','https://upload.wikimedia.org/wikipedia/commons/4/4e/U.S._Navy_Culinary_Specialist_Seaman_Lavonne_Centeno_cooks_steak_in_the_galley_aboard_the_aircraft_carrier_USS_Nimitz_%28CVN_68%29_June_10%2C_2013%2C_while_underway_in_the_Indian_Ocean_130610-N-LP801-018.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (10,'Gardening','Gardening is the practice of growing and cultivating plants as part of horticulture. In gardens, ornamental plants are often grown for their flowers, foliage, or overall appearance; useful plants, such as root vegetables, leaf vegetables, fruits, and herbs, are grown for consumption, for use as dyes, or for medicinal or cosmetic use. Gardening is considered to be a relaxing activity for many people.',1,'https://www.youtube.com/embed/-iDsYcFp4RQ','https://upload.wikimedia.org/wikipedia/commons/0/0f/Parterre2.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (11,'Beatboxing','Beatboxing &#40;also beat boxing or b-boxing&#41; is a form of vocal percussion primarily involving the art of mimicking drum machines using one&#39;s mouth, lips, tongue, and voice. It may also involve vocal imitation of turntablism, and other musical instruments. Beatboxing today is connected with hip-hop culture, often referred to as &#34;the fifth element&#34; of hip-hop, although it is not limited to hip-hop music',1,'https://www.youtube.com/embed/GNZBSZD16cY','https://upload.wikimedia.org/wikipedia/commons/e/ed/Biz_Markie_at_Amager_Bio_1.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (14,'Futsal','Futsal is a variant of association football played on a smaller field and mainly indoors. It can be considered a version of five-a-side football.',1,'https://upload.wikimedia.org/wikipedia/commons/0/06/Futebol_Salao_Pan2007.jpg','https://www.youtube.com/embed/NBB8PDenGJM');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (13,'Mathematics','Mathematics  is the study of topics such as quantity (numbers), structure,space, and change. There is a range of views among mathematicians and philosophers as to the exact scope and definition of mathematics.Mathematicians seek out patterns and use them to formulate new conjectures. Mathematicians resolve the truth or falsity of conjectures by mathematical proof. When mathematical structures are good models of real phenomena, then mathematical reasoning can provide insight or predictions about nature. Through the use of abstraction and logic, mathematics developed from counting, calculation, measurement, and the systematic study of the shapes and motions of physical objects. Practical mathematics has been a human activity for as far back as written records exist. The research required to solve mathematical problems can take years or even centuries of sustained inquiry.',1,'https://www.youtube.com/embed/Z9bqIYbDuns','https://upload.wikimedia.org/wikipedia/commons/2/21/Euclid.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (15,'Watches','A watch is a small timepiece intended to be carried or worn by a person. It is designed to keep working despite the motions caused by the person''s activities. A wristwatch is designed to be worn on a wrist, attached by a watch strap or other type of bracelet. A pocket watch is designed for a person to carry in a pocket.Watches evolved in the 17th century from spring-powered clocks, which appeared as early as the 14th century. The first watches were strictly mechanical, driven by clockwork. As technology progressed, mechanical devices, used to control the speed of the watch, were largely superseded by vibrating quartz crystals that produce accurately timed electronic pulses.[1] Some watches use radio clock technology to regularly correct the time. The first digital electronic watch was developed in 1970.',1,'https://www.youtube.com/embed/wRXoXVYx1e4','http://static.robbreport.com/sites/default/files/images/articles/2015Nov/1803211//patek-1.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (16,'Skydiving','Parachuting, or skydiving, is a method of transiting from a high point to Earth with the aid of gravity, involving the control of speed during the descent with use of a parachute. It may involve more or less free-fall, a time during which the parachute has not been deployed and the body gradually accelerates to terminal velocity.',0,' https://upload.wikimedia.org/wikipedia/commons/1/13/720th_Special_Tactics_Group_airmen_jump_20071003.jpg',' https://www.youtube.com/embed/CzW_5x1M4Uc');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,VIDEOURL,IMAGEURL) values (12,'Jogging','Jogging is a form of trotting or running at a slow or leisurely pace. The main intention is to increase physical fitness with less stress on the body than from faster running, or to maintain a steady speed for longer periods of time. Performed over long distances, it is a form of aerobic endurance training.',1,'https://upload.wikimedia.org/wikipedia/commons/5/5b/Jogging_with_dog_at_Carcavelos_Beach.jpg','https://www.youtube.com/embed/zwdRJmN5j04');
REM INSERTING into CIPRIAN.HOBBYGROUP
SET DEFINE OFF;
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (41,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (41,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (41,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (42,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (42,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (42,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (42,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (42,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (1,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (1,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (2,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (2,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (3,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (3,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (4,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (4,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (5,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (5,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (6,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (6,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (7,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (7,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (7,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (8,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (8,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (8,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (9,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (9,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (9,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (10,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (10,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (10,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (12,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (12,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (1,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (1,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (2,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (2,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (3,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (3,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (4,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (4,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (4,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (5,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (5,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (6,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (6,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (7,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (7,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (8,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (8,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (9,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (9,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (10,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (10,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (11,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (12,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (12,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (12,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (13,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (13,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (13,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (14,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (14,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (14,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (15,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (15,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (15,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (15,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (16,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (16,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (17,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (17,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (17,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (18,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (18,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (18,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (19,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (19,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (20,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (20,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (21,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (21,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (21,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (22,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (22,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (22,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (23,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (23,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (24,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (24,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (24,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (25,10);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (25,14);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (25,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (26,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (26,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (26,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (26,12);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (27,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (27,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (28,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (28,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (29,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (29,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (30,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (30,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (31,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (31,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (31,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (32,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (32,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (32,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (33,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (33,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (33,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (34,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (34,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (34,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (35,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (35,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (35,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (36,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (36,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (36,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (37,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (37,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (37,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (37,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (38,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (38,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (38,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (38,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (39,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (39,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (39,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (39,15);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (40,1);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (40,2);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (40,3);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (40,4);
Insert into CIPRIAN.HOBBYGROUP (IDGROUP,IDHOBBY) values (40,15);
REM INSERTING into CIPRIAN.HOBBYPOST
SET DEFINE OFF;
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (1,1,1343923862291333,'Ciprian',to_date('01-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (36,2,1343923862291333,'Postam si noi
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (38,1,1628126750843339,'Postez
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (39,1,1628126750843339,'Stai calm
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (37,2,1343923862291333,'Nu postam ?
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (40,1,1628126750843339,'De ce nu ai rabdare ?
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (41,16,1343923862291333,'I like null because null',to_date('06-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (7,1,1343923862291333,'Tocmai ce am postat
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (31,1,1343923862291333,'mesaj
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (2,1,1343923862291333,'A doua postare',to_date('02-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (3,2,1343923862291333,'A treia postare',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (13,5,1343923862291333,'&#60;script&#62;window.alert&#40;&#34;sometext&#34;&#41;&#59;&#60;script&#62;',to_date('31-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (14,5,1343923862291333,'&#60;script&#62;window.alert&#40;&#34;sometext&#34;&#41;&#59;&#60;&#47;script&#62;
',to_date('31-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (18,12,1343923862291333,'I like Ciprian because he so pretty',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (6,2,1343923862291333,'Postare de acum',to_date('21-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (4,2,1155743477821938,'Sunt Maria',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (5,2,1628126750843339,'Sunt mama lui Ciprian',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (8,1,1343923862291333,'Ciprian testeaza postarile
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (9,2,1628126750843339,'Ana are mere
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (10,2,1628126750843339,'Voi pleaca acasa
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (22,5,1628126750843339,'I like Tennis because minge',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (23,4,1628126750843339,'I like Basketball because minge',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (24,10,1628126750843339,'I like Gardening because pamant',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (25,6,1628126750843339,'I like Fishing because pesti',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (26,7,1628126750843339,'I like Dance because miscare',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (27,11,1628126750843339,'I like Beatboxing because Beatbox',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (28,13,1343923862291333,'I like Mathematics because of numbers',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (32,2,1343923862291333,'No dapoi sa ne batem',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (33,2,1343923862291333,'Hadi ma
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (34,1,1343923862291333,'Mere cineva la masa ?
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (35,1,1343923862291333,'Oameni rai
',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (20,2,1628126750843339,'I like Box because bataie',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (21,3,1628126750843339,'I like Swimming because apa',to_date('04-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (17,3,1343923862291333,'Am postat si eu aici acum',to_date('02-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (30,15,1628126750843339,'I like Watches because they are beautiful',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (29,15,1343923862291333,'I like Watches because of the movements',to_date('05-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (15,10,1343923862291333,'Am postat si eu aici',to_date('02-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (16,10,1343923862291333,'Am postat si eu aici acum',to_date('02-JUN-16','DD-MON-RR'));
REM INSERTING into CIPRIAN.USERGROUP
SET DEFINE OFF;
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,27);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,28);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,29);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,30);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,31);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,32);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,33);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,34);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,35);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,36);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,41);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,37);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,38);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,39);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,40);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,42);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,20);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,21);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,22);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1155743477821938,1);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1155743477821938,2);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1155743477821938,3);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1155743477821938,4);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,5);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,6);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,7);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,8);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,9);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,10);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,11);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,12);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,13);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,14);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,15);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,5);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,6);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,7);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,8);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,9);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,1);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,2);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,10);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,3);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,16);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,11);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,12);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,13);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,14);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,4);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,17);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,18);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,15);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,19);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,23);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,24);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,25);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1343923862291333,26);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,27);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,28);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,29);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,30);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,31);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,32);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,33);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,34);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,35);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,36);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,37);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,38);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,39);
Insert into CIPRIAN.USERGROUP (IDUSER,IDGROUP) values (1628126750843339,40);
REM INSERTING into CIPRIAN.USERHOBBY
SET DEFINE OFF;
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,10);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,12);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,14);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,1);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,3);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,4);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,5);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,6);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,7);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,10);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,11);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,12);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,13);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,14);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,15);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,16);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,1);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,3);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,4);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,15);
REM INSERTING into CIPRIAN.USERSOHO
SET DEFINE OFF;
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1155743477821938,'Maria','Anghelache',to_date('03-AUG-95','DD-MON-RR'),'maria.anghelache@yahoo.com',2,'EAAWea65wWZAIBAOjWv9ZAdvrb7NzxJ4HqwSQC7HxHexy5DAqBfttgbF3Mqpi4uiNTISBuT3oTjsXrc7D1lHZB5i7PS5fGpO7FxuLZBHypqpEJq33UaqExxcHvsi31q4Y2l5xln6NnKpLXFOPUnxoB1YdrkFQ65IZD&expires=5183841
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.2.50.50/p50x50/12301546_1041987689197518_5855819531228058744_n.jpg?oh=489bb024c86840aefa4008ea76e7a76e&oe=57DD8CBB');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1628126750843339,'Gabriela','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'gabrielacusm@gmail.com',2,'EAAWea65wWZAIBAMcR4psFvVIzNwSLsy0GheOSOoXKUMDTbpDWWZAZBGoH4ZBysJ1oMlZBEq8vy3y4SWAyPRxaZCgnLWI4X0nIEUdLZAKE75sqtFCX7Op4HcmwzVTFwiE2LDjZCtmbKkHP1gRgu74Lz57nZCTme5VK7tgc2xkt9pEO4gZDZD&expires=5184000
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.19.50.50/p50x50/12439219_1554899798166035_1610282242355468738_n.jpg?oh=a7cad59d0235d6396077e4d77158cfe1&oe=57CF3E96');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1097717203618851,'Grosu','Ilie Andrei',to_date('03-AUG-95','DD-MON-RR'),'an3y_capitano@yahoo.com',2,'EAAWea65wWZAIBAHz6PF4TQrDZAtBbXLYk3NjjkgZAi27XVu7GgzEDZA6mZC3Gc6rqovqwOjcV9AhSjYRQ9UtNNBUdrm1eMHPu1RqWK2pN2OZCOyCDBBLDYUUPOjJXZA9Din8DIODmwM3K3cDu3ZBxXbVrufQa4D6m99BIunE4mnfVQZDZD&expires=5183999
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13082690_1085366341520604_6505151982216895306_n.jpg?oh=caa3a8ccd479cd0959a616fe5f3b6a08&oe=579C4B5F');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1343923862291333,'Ciprian','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'cipc_20002002@yahoo.com',1,'EAAWea65wWZAIBAG8YHm7Ez7zvUvRUoqpXfIC1UH6bzJtkeA0JzYKXo7pfUjSoUT5A6vHXF03nBL4EF3SXarosD3kpmOvgBJak292qWdtQE1VVkkwgZA9XVXvv9voNLcGlKnZAqJmJfVeErsMKbQbs8d8FbHo6HkuEZBQbo39GgZDZD&expires=5184000
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c8.0.50.50/p50x50/1380170_752111984805860_9520347_n.jpg?oh=6ea4e8295cc81afb84064aac123db4d3&oe=57CFC603');
--------------------------------------------------------
--  DDL for Index MESAJ
--------------------------------------------------------

  CREATE INDEX "CIPRIAN"."MESAJ" ON "CIPRIAN"."HOBBYPOST" ("IDPOST", "IDHOBBY", "IDUSER", "MESSAGE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_IDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "CIPRIAN"."PK_IDS" ON "CIPRIAN"."USERHOBBY" ("IDUSER", "IDHOBBY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USERHOBBY
--------------------------------------------------------

  ALTER TABLE "CIPRIAN"."USERHOBBY" ADD CONSTRAINT "PK_IDS" PRIMARY KEY ("IDUSER", "IDHOBBY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERSOHO
--------------------------------------------------------

  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("SURNAMEUSER" NOT NULL ENABLE);
  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("NAMEUSER" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger AUTOINCREMENTIDGROUP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CIPRIAN"."AUTOINCREMENTIDGROUP" after insert on GROUPS
  declare
    v_lastid number;
  begin
    select max(idGroup) into v_lastid from Groups;
    update Groups set idGroup=v_lastid+1 where idGroup=0;
  end;
/
ALTER TRIGGER "CIPRIAN"."AUTOINCREMENTIDGROUP" ENABLE;
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
--  DDL for Trigger AUTOINCREMENTIDPOSTG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CIPRIAN"."AUTOINCREMENTIDPOSTG" after insert on GroupPost
  declare
    v_lastid number;
  begin
    select max(idPost) into v_lastid from grouppost;
    update grouppost set idPost=v_lastid+1 where idPost=0;
  end;
/
ALTER TRIGGER "CIPRIAN"."AUTOINCREMENTIDPOSTG" ENABLE;
--------------------------------------------------------
--  DDL for Package ADMINSKILLS
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "CIPRIAN"."ADMINSKILLS" IS
     PROCEDURE setGrade(p_idUser number, p_grade varchar2);
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
     PROCEDURE postInGroup(p_idUser number, p_idGroup number, p_message varchar2);

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
        
           user_invalid EXCEPTION;
        PRAGMA EXCEPTION_INIT(user_invalid, -20031);
        
           user_inexistent EXCEPTION;
        PRAGMA EXCEPTION_INIT(user_inexistent, -20031);
      
    PROCEDURE setGrade(p_idUser number, p_grade varchar2) as
        grad_inexistent EXCEPTION;
            PRAGMA EXCEPTION_INIT(grad_inexistent, -20020);
        denumire_grad_invalida EXCEPTION;
            PRAGMA EXCEPTION_INIT(denumire_grad_invalida, -20021);
        user_invalid EXCEPTION;
            PRAGMA EXCEPTION_INIT(user_invalid, -20028);
        v_corectName number;
      BEGIN
            if(v_corectName=0) then raise email_invalid;
            else
              select count(*) into v_corectName from UsersOho where idUser=p_idUser;
              if(v_corectName = 0) then raise email_inexistent;
              else
                select idGrad into v_corectName from UsersOho where idUser=p_idUser;
                if(v_corectName=1) then raise user_invalid;
                  else
                  v_corectName:=validator.validateFlName(p_grade);
                  if(v_corectName=0) then raise denumire_grad_invalida;
                    else
                      select count(*) into v_corectName from grades where numegrad=p_grade;
                      if(v_corectName=0) then raise grad_inexistent;
                        else
                          select idGrad into v_corectName from grades where numegrad=p_grade;
                          update UsersOho set idGrad=v_corectName where idUser=p_idUser;
                      end if;
                    end if;
                  end if;
            end if;
          end if;
        EXCEPTION
            WHEN user_invalid THEN
              raise_application_error (-20031,'Id-ul '|| p_idUser || ' este invalid.');
            WHEN user_inexistent THEN
              raise_application_error (-20030, 'Utilizatorul cu id-ul '|| p_idUser || ' nu exista in baza de date.');
            WHEN denumire_grad_invalida THEN
              raise_application_error (-20022,'Nume grad invalid.');
            WHEN grad_inexistent THEN
              raise_application_error (-20023, 'Gradul ' || p_grade || ' nu exista in baza de date.');
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
              select count(*) into v_existHobby from Hobby where idHobby=p_idHobby;
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
              select count(*) into v_flag from Hobby where hobbyname=p_hobby;
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
            insert into hobby values(0,p_nameHobby,v_description,0,p_videoUrl ,p_imageUrl);
        end if;
      end if;
    EXCEPTION
     WHEN nume_hobby_invalid THEN
       raise_application_error (-20035,'Denumirea '|| p_nameHobby || ' nu poate fi atribuita unui hobby.');   
     WHEN nume_hobby_existent THEN
       raise_application_error (-20036,'Hobby-ul cu numele '|| p_nameHobby ||' exista in baza de date.');
  END newHobby;
    PROCEDURE postInGroup(p_idUser number, p_idGroup number, p_message varchar2) as
       group_inexistent EXCEPTION;
          PRAGMA EXCEPTION_INIT(group_inexistent, -20041);
        group_necorespunzator EXCEPTION;
          PRAGMA EXCEPTION_INIT(group_necorespunzator, -20042);
          v_flag number;
          v_idGroup number;
      BEGIN
          select count(*) into v_flag from usersoho where idUser=p_idUser;
          if(v_flag=0) then raise user_inexistent;
          else
              select count(*) into v_flag from Groups where idGroup=p_idGroup;
              if(v_flag=0) then raise group_inexistent;
              else
                select idGroup into v_idGroup from Groups where idGroup=p_idGroup;
                select count(*) into v_flag from usergroup where idUser=p_idUser and idGroup=v_idGroup;
                if(v_flag=0) then raise group_necorespunzator;
                else
                  insert into grouppost values(0,v_idGroup, p_idUser, p_message, current_date);
                end if;
              end if;
          end if;
        EXCEPTION
            WHEN user_inexistent THEN
              raise_application_error (-20012, 'Utilizatorul cu id-ul '|| p_idUser || ' nu exista in baza de date.');
            WHEN group_inexistent THEN
              raise_application_error (-20041,'Grupul cu id-ul '|| p_idGroup || ' nu exista in baza de date.');
            WHEN group_necorespunzator THEN
              raise_application_error (-20042, 'Userul cu cu id-ul '|| p_idUser  || ' nu poate posta in grupul cu id-ul ' || p_idGroup || ' .');
      END postInGroup;
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
--  DDL for Procedure CHECKFOR2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."CHECKFOR2" (v_idUser number) as
  v_salt number:=1;
  v_flag number;
  v_idGroup number;
  v_numeHobbyNou varchar2(120);
  begin
  select count(*) into v_flag from (select hobbyname, h.idhobby from hobby h join userhobby u on h.idHobby=u.idHobby where u.idUser=v_idUser);
    for i in (select * from (select hobbyname, h.idhobby from hobby h join userhobby u on h.idHobby=u.idHobby where u.idUser=v_idUser order by h.idHobby asc) where rownum<=v_flag-1) loop
      for j in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
        select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt) order by idHobby asc) loop
        select count(*) into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname;
        if(v_flag=0) then
            select count(*) into v_flag from (select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=i.idHobby
                                              intersect
                                              select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=j.idHobby);
            if (v_flag>1) then 
              v_numeHobbyNou:=i.hobbyname||'-'||j.hobbyname;
              dbms_output.put_line(v_numeHobbyNou);
              insert into groups values (0, substr(i.hobbyname,0,1)||substr(j.hobbyname,0,1),v_numeHobbyNou);
              select idGroup into v_flag from groups where description=v_numeHobbyNou;
              insert into usergroup values (v_idUser, v_flag);
              insert into hobbygroup values (v_flag, i.idHobby);
              insert into hobbygroup values (v_flag, j.idHobby);
            end if;
          else
          select idGroup into v_idGroup from Groups where description=i.hobbyname||'-'||j.hobbyname;
          select count(*) into v_flag from usergroup where idUser=v_idUser and idGroup=v_idGroup;
          if(v_flag=0) then
            select idGroup into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname;
            insert into usergroup values (v_idUser, v_flag);
            end if;
         end if;
      end loop;
      v_salt:=v_salt+1;
    end loop;
  end;

/
--------------------------------------------------------
--  DDL for Procedure CHECKFOR3
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."CHECKFOR3" (v_idUser number) as
  v_salt number:=1;
  v_salt2 number:=2;
  v_flag number;
  v_idGroup number;
  v_numeHobbyNou varchar2(120);
  begin
    for i in (select hobbyname, h.idhobby from hobby h join userhobby u on h.idHobby=u.idHobby where u.idUser=v_idUser order by h.idHobby asc) loop
      for j in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
        select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt) order by idHobby asc) loop
          for k in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
          select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt2) order by idHobby asc) loop
            
            select count(*) into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname;
            if(v_flag=0) then
                select count(*) into v_flag from ((select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=i.idHobby
                                                  intersect
                                                  select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=j.idHobby)
                                                  intersect
                                                  select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=k.idHobby);                            
                if (v_flag>1) then 
                  v_numeHobbyNou:=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname;
                  dbms_output.put_line(v_numeHobbyNou);
                  insert into groups values (0, substr(i.hobbyname,0,1)||substr(j.hobbyname,0,1)||substr(k.hobbyname,0,1),v_numeHobbyNou);
                  select idGroup into v_flag from groups where description=v_numeHobbyNou;
                  insert into usergroup values (v_idUser, v_flag);
                  insert into hobbygroup values (v_flag, i.idHobby);
                  insert into hobbygroup values (v_flag, j.idHobby);
                  insert into hobbygroup values (v_flag, k.idHobby);
                end if;
              else
              select idGroup into v_idGroup from Groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname;
          select count(*) into v_flag from usergroup where idUser=v_idUser and idGroup=v_idGroup;
              if(v_flag=0) then
                select idGroup into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname;
                insert into usergroup values (v_idUser, v_flag);
                end if;
             end if;
          end loop;
          v_salt2:=v_salt2+1;
      end loop;
      v_salt:=v_salt+1;
      v_salt2:=v_salt+1;
    end loop;
  end;

/
--------------------------------------------------------
--  DDL for Procedure CHECKFOR4
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."CHECKFOR4" (v_idUser number) as
  v_salt number:=1;
  v_salt2 number:=2;
  v_salt3 number:=3;
  v_flag number;
  v_idGroup number;
  v_numeHobbyNou varchar2(120);
  begin
    for i in (select hobbyname, h.idhobby from hobby h join userhobby u on h.idHobby=u.idHobby where u.idUser=v_idUser order by h.idHobby asc) loop
      for j in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
        select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt) order by idHobby asc) loop
          for k in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
          select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt2) order by idHobby asc) loop
            for l in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
              select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt3) order by idHobby asc) loop
                select count(*) into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname;
                if(v_flag=0) then
                    select count(*) into v_flag from (((select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=i.idHobby
                                                      intersect
                                                      select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=j.idHobby)
                                                      intersect
                                                      select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=k.idHobby)
                                                      intersect
                                                      select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=l.idHobby);
                    if (v_flag>1) then 
                      v_numeHobbyNou:=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname;
                      dbms_output.put_line(v_numeHobbyNou);
                      insert into groups values (0, substr(i.hobbyname,0,1)||substr(j.hobbyname,0,1)||substr(k.hobbyname,0,1)||substr(l.hobbyname,0,1),v_numeHobbyNou);
                      select idGroup into v_flag from groups where description=v_numeHobbyNou;
                      insert into usergroup values (v_idUser, v_flag);
                      insert into hobbygroup values (v_flag, i.idHobby);
                      insert into hobbygroup values (v_flag, j.idHobby);
                      insert into hobbygroup values (v_flag, k.idHobby);
                      insert into hobbygroup values (v_flag, l.idHobby);
                    end if;
                  else
                  select idGroup into v_idGroup from Groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname;
              select count(*) into v_flag from usergroup where idUser=v_idUser and idGroup=v_idGroup;
                  if(v_flag=0) then
                    select idGroup into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname;
                    insert into usergroup values (v_idUser, v_flag);
                    end if;
                 end if;
            end loop;
              v_salt3:=v_salt3+1;
          end loop;
          v_salt2:=v_salt2+1;
      end loop;
      v_salt:=v_salt+1;
      v_salt2:=v_salt+1;
      v_salt3:=v_salt2+1;
    end loop;
  end;

/
--------------------------------------------------------
--  DDL for Procedure CHECKFOR5
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."CHECKFOR5" (v_idUser number) as
  v_salt number:=1;
  v_salt2 number:=2;
  v_salt3 number:=3;
  v_salt4 number:=4;
  v_flag number;
  v_idGroup number;
  v_numeHobbyNou varchar2(120);
  begin
    for i in (select hobbyname, h.idhobby from hobby h join userhobby u on h.idHobby=u.idHobby where u.idUser=v_idUser order by h.idHobby asc) loop
      for j in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
        select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt) order by idHobby asc) loop
          for k in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
          select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt2) order by idHobby asc) loop
            for l in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
              select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt3) order by idHobby asc) loop
                for m in (select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where u.idUser=v_idUser minus 
                  select * from (select hobbyname, h.idHobby from hobby h join userhobby u on u.idHobby=h.idHobby where idUser=v_idUser) where rownum<=v_salt4) order by idHobby asc) loop
                      select count(*) into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname||'-'||m.hobbyname;
                      if(v_flag=0) then
                          select count(*) into v_flag from ((((select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=i.idHobby
                                                            intersect
                                                            select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=j.idHobby)
                                                            intersect
                                                            select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=k.idHobby)
                                                            intersect
                                                            select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=l.idHobby)
                                                            intersect
                                                            select nameuser, surnameuser from usersoho us join userhobby u on u.idUser=us.idUser where idHobby=m.idHobby);
                          if (v_flag>1) then 
                            v_numeHobbyNou:=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname||'-'||m.hobbyname;
                            dbms_output.put_line(v_numeHobbyNou);
                            insert into groups values (0, substr(i.hobbyname,0,1)||substr(j.hobbyname,0,1)||substr(k.hobbyname,0,1)||substr(l.hobbyname,0,1)||substr(m.hobbyname,0,1),v_numeHobbyNou);
                            select idGroup into v_flag from groups where description=v_numeHobbyNou;
                            insert into usergroup values (v_idUser, v_flag);
                            insert into hobbygroup values (v_flag, i.idHobby);
                            insert into hobbygroup values (v_flag, j.idHobby);
                            insert into hobbygroup values (v_flag, k.idHobby);
                            insert into hobbygroup values (v_flag, l.idHobby);
                            insert into hobbygroup values (v_flag, m.idHobby);
                          end if;
                        else
                        select idGroup into v_idGroup from Groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname||'-'||m.hobbyname;
                    select count(*) into v_flag from usergroup where idUser=v_idUser and idGroup=v_idGroup;
                        if(v_flag=0) then
                          select idGroup into v_flag from groups where description=i.hobbyname||'-'||j.hobbyname||'-'||k.hobbyname||'-'||l.hobbyname||'-'||m.hobbyname;
                          insert into usergroup values (v_idUser, v_flag);
                          end if;
                       end if;
                  end loop;
                  v_salt4:=v_salt4+1;
            end loop;
              v_salt3:=v_salt3+1;
          end loop;
          v_salt2:=v_salt2+1;
      end loop;
      v_salt:=v_salt+1;
      v_salt2:=v_salt+1;
      v_salt3:=v_salt2+1;
      v_salt4:=v_salt3+1;
    end loop;
  end;

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
--  DDL for Procedure GENERATEGROUPS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CIPRIAN"."GENERATEGROUPS" (p_idUser number) as
  v_flag number;
  begin
      select count(*) into v_flag from (select hobbyname from hobby h join userhobby u on u.idhobby=h.idhobby where idUser=p_idUser);
      if(v_flag>1) then
        checkFor2(p_idUser);
        if (v_flag>2) then
          checkFor3(p_idUser);
          if (v_flag >3) then
            checkFor4(p_idUser);
            if(v_flag>4) then
              checkFor5(p_idUser);
            end if;
          end if;
        end if;
      end if;
  end;

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
                      )) MINUS select idHobby from userhobby where idUser=p_idUser)) h2 where h1.idHobby=h2.idHobby)and h1.APPROVED=1
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
