set serveroutput on;

drop table grades;
/
drop table hobby;
/
drop table hobbypost;
/
drop table userhobby;
/
drop table usersoho;
/
drop table grouppost;
/
drop table groups;
/
drop table usergroup;
/
drop table hobbygroup;
/


CREATE TABLE "CIPRIAN"."HOBBYGROUP" 
   (	"IDGROUP" NUMBER, 
  "IDHOBBY" NUMBER
   );

CREATE TABLE "CIPRIAN"."USERGROUP" 
   (	"IDUSER" NUMBER, 
	"IDGROUP" NUMBER
   );

CREATE TABLE "CIPRIAN"."GROUPPOST" 
   (	"IDPOST" NUMBER DEFAULT 0,
   "idGroup" number,
	"IDUSER" NUMBER, 
	"MESSAGE" VARCHAR2(500 BYTE), 
	"DATE_OF_POST" DATE DEFAULT current_date
   );
   
   CREATE TABLE "CIPRIAN"."GROUPS" 
   (	"IDGROUP" NUMBER,
	"GROUPNAME" VARCHAR2(20 BYTE),
	"DESCRIPTION" VARCHAR2(1500 BYTE)
   );

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
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (1,'Football','Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word football is understood to refer to whichever form of football is the most popular in the regional context in which the word appears. Sports commonly called ''football'' in certain places include: association football (known as soccer in some countries); gridiron football (specifically American football or Canadian football); Australian rules football; rugby football (either rugby league or rugby union); and Gaelic football.[1][2] These different variations of football are known as football codes.',1,'https://www.youtube.com/embed/-NSvbGxzpKk','http://bucurestifm.ro/wp-content/uploads/sites/2/2015/09/fotbal-2.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (2,'Box','Boxing is a martial art and combat sport in which two people wearing protective gloves throw punches at each other for a predetermined set of time in a boxing ring.

Amateur boxing is both an Olympic and Commonwealth sport and is a common fixture in most international games—it also has its own World Championships. Boxing is supervised by a referee over a series of one- to three-minute intervals called rounds. The result is decided when an opponent is deemed incapable to continue by a referee, is disqualified for breaking a rule, resigns by throwing in a towel, or is pronounced the winner or loser based on the judges'' scorecards at the end of the contest. In the event that both fighters gain equal scores from the judges, the fight is considered a draw (professional boxing). In Olympic boxing, due to the fact that a winner must be declared, in the case of a draw - the judges use technical criteria to choose the most deserving winner of the bout.',1,'https://www.youtube.com/embed/humDRT29mAM','http://www.beyondsports.ro/img/box1.gif');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (3,'Swimming','Human swimming is the self-propulsion of a person through water or another liquid, usually for recreation, sport, exercise, or survival. Locomotion is achieved through coordinated movement of the limbs, the body, or both. Humans can hold their breath underwater and undertake rudimentary locomotive swimming within weeks of birth, as an evolutionary response',1,'https://www.youtube.com/embed/GxlFhK817R8','http://www.ancada.com/_Files/News/Attachments/2011/10/25/inot-95965.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (4,'Basketball','Basketball is a sport played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and 10 feet (3.048 m) high mounted to a backboard at each end.',1,'https://www.youtube.com/embed/J8sWBdHJB2M','http://blog.cursuribaschet.ro/wp-content/uploads/2014/12/baschet-generic-03-500x300-1748x984.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (5,'Tennis','Tennis is a racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent''s court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will.',1,'https://www.youtube.com/embed/lMinfVMfH9k','http://bucurestifm.ro/wp-content/uploads/sites/2/2014/11/Tenis.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (6,'Fishing','Fishing is the activity of trying to catch fish. Fish are normally caught in the wild. Techniques for catching fish include hand gathering, spearing, netting, angling and trapping.

Fishing may include catching other aquatic animals, such as molluscs, cephalopods, crustaceans, and echinoderms. The term is not normally applied to catching farmed fish, or to aquatic mammals, and marine mammals, such as whales, where the term whaling is more appropriate.',1,'https://www.youtube.com/embed/8cVxb2yremw','https://upload.wikimedia.org/wikipedia/commons/b/b9/Stilts_fishermen_Sri_Lanka_02.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (7,'Dance','Dance is a performance art form consisting of purposefully selected sequences of human movement. This movement has aesthetic and symbolic value, and is acknowledged as dance by performers and observers within a particular culture.[nb 1] Dance can be categorized and described by its choreography, by its repertoire of movements, or by its historical period or place of origin.',1,'https://www.youtube.com/embed/W8n6yji9ZOY','https://upload.wikimedia.org/wikipedia/commons/3/38/Two_dancers.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (8,'Music','Music is an art form and cultural activity whose medium is sound and silence. The common elements of music are pitch (which governs melody and harmony), rhythm (and its associated concepts tempo, meter, and articulation), dynamics (loudness and softness), and the sonic qualities of timbre and texture (which are sometimes termed the "color" of a musical sound). Different styles or types of music may emphasize, de-emphasize or omit some of these elements. Music is performed with a vast range of instruments and with vocal techniques ranging from singing to rapping, and there are solely instrumental pieces, solely vocal pieces (such as songs without instrumental accompaniment) and pieces that combine singing and instruments. The word derives from Greek ??????? (mousike; "art of the Muses").[1] In its most general form, the activities describing music as an art form include the production of works of music (songs, tunes, symphonies, and so on), the criticism of music, the study of the history of music, and the aesthetic examination of music.',1,'https://www.youtube.com/embed/7jTyvm27EsE','https://upload.wikimedia.org/wikipedia/commons/e/e3/Billie_Holiday%2C_Downbeat%2C_New_York%2C_N.Y.%2C_ca._Feb._1947_%28William_P._Gottlieb_04251%29.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (9,'Cooking','Cooking or cookery is the art, technology and craft of preparing food for consumption with the use of heat. Cooking techniques and ingredients vary widely across the world, from grilling food over an open fire to using electric stoves, to baking in various types of ovens, reflecting unique environmental, economic, and cultural traditions and trends. The ways or types of cooking also depend on the skill and type of training an individual cook has. Cooking is done both by people in their own dwellings and by professional cooks and chefs in restaurants and other food establishments. Cooking can also occur through chemical reactions without the presence of heat, most notably with ceviche, a traditional South American dish where fish is cooked with the acids in lemon or lime juice.',1,'https://www.youtube.com/embed/VGQSVuNy1r4','https://upload.wikimedia.org/wikipedia/commons/4/4e/U.S._Navy_Culinary_Specialist_Seaman_Lavonne_Centeno_cooks_steak_in_the_galley_aboard_the_aircraft_carrier_USS_Nimitz_%28CVN_68%29_June_10%2C_2013%2C_while_underway_in_the_Indian_Ocean_130610-N-LP801-018.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (10,'Gardening','Gardening is the practice of growing and cultivating plants as part of horticulture. In gardens, ornamental plants are often grown for their flowers, foliage, or overall appearance; useful plants, such as root vegetables, leaf vegetables, fruits, and herbs, are grown for consumption, for use as dyes, or for medicinal or cosmetic use. Gardening is considered to be a relaxing activity for many people.',1,'https://www.youtube.com/embed/-iDsYcFp4RQ','https://upload.wikimedia.org/wikipedia/commons/0/0f/Parterre2.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (11,'Beatboxing','Beatboxing &#40;also beat boxing or b-boxing&#41; is a form of vocal percussion primarily involving the art of mimicking drum machines using one&#39;s mouth, lips, tongue, and voice. It may also involve vocal imitation of turntablism, and other musical instruments. Beatboxing today is connected with hip-hop culture, often referred to as &#34;the fifth element&#34; of hip-hop, although it is not limited to hip-hop music',1,'https://www.youtube.com/embed/GNZBSZD16cY','https://upload.wikimedia.org/wikipedia/commons/e/ed/Biz_Markie_at_Amager_Bio_1.jpg');
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (12,'Ciprian','E super smecher',0,'www.google.com','www.google.com');
REM INSERTING into CIPRIAN.HOBBYPOST
SET DEFINE OFF;
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (1,1,1343923862291333,'Ciprian',to_date('01-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (18,2,1343923862291333,'pa',to_date('03-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (7,1,1343923862291333,'Tocmai ce am postat
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (2,1,1343923862291333,'A doua postare',to_date('02-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (3,2,1343923862291333,'A treia postare',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (13,5,1343923862291333,'&#60;script&#62;window.alert&#40;&#34;sometext&#34;&#41;&#59;&#60;script&#62;',to_date('31-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (14,5,1343923862291333,'&#60;script&#62;window.alert&#40;&#34;sometext&#34;&#41;&#59;&#60;&#47;script&#62;
',to_date('31-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (6,2,1343923862291333,'Postare de acum',to_date('21-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (4,2,1155743477821938,'Sunt Maria',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (5,2,1628126750843339,'Sunt mama lui Ciprian',to_date('04-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (8,1,1343923862291333,'Ciprian testeaza postarile
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (9,2,1628126750843339,'Ana are mere
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (10,2,1628126750843339,'Voi pleaca acasa
',to_date('30-MAY-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (17,3,1343923862291333,'Am postat si eu aici acum',to_date('02-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (19,12,1343923862291333,'I like Ciprian because e frumos',to_date('03-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (21,5,1343923862291333,'da
',to_date('03-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (20,7,1343923862291333,'I like Dance because ceva',to_date('03-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (22,5,1343923862291333,'dada
',to_date('03-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (15,10,1343923862291333,'Am postat si eu aici',to_date('02-JUN-16','DD-MON-RR'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (16,10,1343923862291333,'Am postat si eu aici acum',to_date('02-JUN-16','DD-MON-RR'));
REM INSERTING into CIPRIAN.NUMEFAMSG
SET DEFINE OFF;

Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,2);
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
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,1);
REM INSERTING into CIPRIAN.USERSOHO
SET DEFINE OFF;
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1155743477821938,'Maria','Anghelache',to_date('03-AUG-95','DD-MON-RR'),'maria.anghelache@yahoo.com',2,'EAAWea65wWZAIBAOjWv9ZAdvrb7NzxJ4HqwSQC7HxHexy5DAqBfttgbF3Mqpi4uiNTISBuT3oTjsXrc7D1lHZB5i7PS5fGpO7FxuLZBHypqpEJq33UaqExxcHvsi31q4Y2l5xln6NnKpLXFOPUnxoB1YdrkFQ65IZD&expires=5183841
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.2.50.50/p50x50/12301546_1041987689197518_5855819531228058744_n.jpg?oh=489bb024c86840aefa4008ea76e7a76e&oe=57DD8CBB');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1628126750843339,'Gabriela','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'gabrielacusm@gmail.com',2,'EAAWea65wWZAIBAKOmO2JZAdZAKSlEJHpacImPehKnlReRD0OLXmxN5ZAg60djWQ35daqyYt6l3QmZCcNRT5xZBHk5e7vTeQlOWZAnkLO2oHXbfNKV42D0ZA4CXANnMCd8jwTXvSwoOXzZCMU2vyMDP8tQ3VQF7m6Pgs0ZD&expires=5174692
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.19.50.50/p50x50/12439219_1554899798166035_1610282242355468738_n.jpg?oh=a7cad59d0235d6396077e4d77158cfe1&oe=57CF3E96');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1097717203618851,'Grosu','Ilie Andrei',to_date('03-AUG-95','DD-MON-RR'),'an3y_capitano@yahoo.com',2,'EAAWea65wWZAIBAHz6PF4TQrDZAtBbXLYk3NjjkgZAi27XVu7GgzEDZA6mZC3Gc6rqovqwOjcV9AhSjYRQ9UtNNBUdrm1eMHPu1RqWK2pN2OZCOyCDBBLDYUUPOjJXZA9Din8DIODmwM3K3cDu3ZBxXbVrufQa4D6m99BIunE4mnfVQZDZD&expires=5183999
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13082690_1085366341520604_6505151982216895306_n.jpg?oh=caa3a8ccd479cd0959a616fe5f3b6a08&oe=579C4B5F');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1343923862291333,'Ciprian','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'cipc_20002002@yahoo.com',1,'EAAWea65wWZAIBAHHCNEfZCtj9iOn1N7dqp3BEZBhCYRArRGWeQY1LKZBCEGgDLO0QTKyftWJbTBYM4rVBbOIKarZC3INAH24x8arY0KV50LPmTCnHFPnXKlxA1VqotjZAl4HG7ZCVj8j1zsV5I8CpqCCsuDl7N5zCY4co7dwQkPZAQZDZD&expires=5157884
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c8.0.50.50/p50x50/1380170_752111984805860_9520347_n.jpg?oh=6ea4e8295cc81afb84064aac123db4d3&oe=57CFC603');
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

--test acest trigger
  CREATE OR REPLACE TRIGGER "CIPRIAN"."AUTOINCREMENTIDGROUP" after insert on GROUPS
  declare
    v_lastid number;
  begin
    select max(idGroup) into v_lastid from Groups;
    update Groups set idGroup=v_lastid+1 where idGroup=0;
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


CREATE OR REPLACE TRIGGER "CIPRIAN"."AUTOINCREMENTIDPOSTG" after insert on GroupPost
  declare
    v_lastid number;
  begin
    select max(idPost) into v_lastid from grouppost;
    update grouppost set idPost=v_lastid+1 where idPost=0;
  end;
/


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
     procedure loginUser(p_idUser number);
    PROCEDURE addUser (p_idUser number, p_nameUser varchar2, p_surnameUser varchar2, p_dataBirth varchar2, p_email varchar2,p_authToken varchar2,p_authSite varchar2, p_photoURL varchar2);
     PROCEDURE joinToNewHobby(p_email varchar2, p_nameHobby varchar2);
     PROCEDURE postIt(p_email varchar2, p_hobby varchar2, p_message varchar2);
     PROCEDURE updateUser(p_idUser number, p_name varchar2, p_surname varchar2, p_date_of_birth varchar2, p_email varchar2);
     PROCEDURE newHobby(p_nameHobby varchar2, p_description varchar2);
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
    PROCEDURE generateHobbies IS
    BEGIN
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (1,'Football','Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word football is understood to refer to whichever form of football is the most popular in the regional context in which the word appears. Sports commonly called ''football'' in certain places include: association football (known as soccer in some countries); gridiron football (specifically American football or Canadian football); Australian rules football; rugby football (either rugby league or rugby union); and Gaelic football.[1][2] These different variations of football are known as football codes.',1,'https://www.youtube.com/embed/-NSvbGxzpKk','http://bucurestifm.ro/wp-content/uploads/sites/2/2015/09/fotbal-2.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (2,'Box','Boxing is a martial art and combat sport in which two people wearing protective gloves throw punches at each other for a predetermined set of time in a boxing ring.
      
      Amateur boxing is both an Olympic and Commonwealth sport and is a common fixture in most international games—it also has its own World Championships. Boxing is supervised by a referee over a series of one- to three-minute intervals called rounds. The result is decided when an opponent is deemed incapable to continue by a referee, is disqualified for breaking a rule, resigns by throwing in a towel, or is pronounced the winner or loser based on the judges'' scorecards at the end of the contest. In the event that both fighters gain equal scores from the judges, the fight is considered a draw (professional boxing). In Olympic boxing, due to the fact that a winner must be declared, in the case of a draw - the judges use technical criteria to choose the most deserving winner of the bout.',1,'https://www.youtube.com/embed/humDRT29mAM','http://www.beyondsports.ro/img/box1.gif');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (3,'Swimming','Human swimming is the self-propulsion of a person through water or another liquid, usually for recreation, sport, exercise, or survival. Locomotion is achieved through coordinated movement of the limbs, the body, or both. Humans can hold their breath underwater and undertake rudimentary locomotive swimming within weeks of birth, as an evolutionary response',1,'https://www.youtube.com/embed/GxlFhK817R8','http://www.ancada.com/_Files/News/Attachments/2011/10/25/inot-95965.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (4,'Basketball','Basketball is a sport played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and 10 feet (3.048 m) high mounted to a backboard at each end.',1,'https://www.youtube.com/embed/J8sWBdHJB2M','http://blog.cursuribaschet.ro/wp-content/uploads/2014/12/baschet-generic-03-500x300-1748x984.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (5,'Tennis','Tennis is a racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent''s court. The object of the game is to play the ball in such a way that the opponent is not able to play a valid return. The player who is unable to return the ball will not gain a point, while the opposite player will.',1,'https://www.youtube.com/embed/lMinfVMfH9k','http://bucurestifm.ro/wp-content/uploads/sites/2/2014/11/Tenis.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (6,'Fishing','Fishing is the activity of trying to catch fish. Fish are normally caught in the wild. Techniques for catching fish include hand gathering, spearing, netting, angling and trapping.
      
      Fishing may include catching other aquatic animals, such as molluscs, cephalopods, crustaceans, and echinoderms. The term is not normally applied to catching farmed fish, or to aquatic mammals, and marine mammals, such as whales, where the term whaling is more appropriate.',1,'https://www.youtube.com/embed/8cVxb2yremw','https://upload.wikimedia.org/wikipedia/commons/b/b9/Stilts_fishermen_Sri_Lanka_02.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (7,'Dance','Dance is a performance art form consisting of purposefully selected sequences of human movement. This movement has aesthetic and symbolic value, and is acknowledged as dance by performers and observers within a particular culture.[nb 1] Dance can be categorized and described by its choreography, by its repertoire of movements, or by its historical period or place of origin.',1,'https://www.youtube.com/embed/W8n6yji9ZOY','https://upload.wikimedia.org/wikipedia/commons/3/38/Two_dancers.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (8,'Music','Music is an art form and cultural activity whose medium is sound and silence. The common elements of music are pitch (which governs melody and harmony), rhythm (and its associated concepts tempo, meter, and articulation), dynamics (loudness and softness), and the sonic qualities of timbre and texture (which are sometimes termed the "color" of a musical sound). Different styles or types of music may emphasize, de-emphasize or omit some of these elements. Music is performed with a vast range of instruments and with vocal techniques ranging from singing to rapping, and there are solely instrumental pieces, solely vocal pieces (such as songs without instrumental accompaniment) and pieces that combine singing and instruments. The word derives from Greek ??????? (mousike; "art of the Muses").[1] In its most general form, the activities describing music as an art form include the production of works of music (songs, tunes, symphonies, and so on), the criticism of music, the study of the history of music, and the aesthetic examination of music.',1,'https://www.youtube.com/embed/7jTyvm27EsE','https://upload.wikimedia.org/wikipedia/commons/e/e3/Billie_Holiday%2C_Downbeat%2C_New_York%2C_N.Y.%2C_ca._Feb._1947_%28William_P._Gottlieb_04251%29.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (9,'Cooking','Cooking or cookery is the art, technology and craft of preparing food for consumption with the use of heat. Cooking techniques and ingredients vary widely across the world, from grilling food over an open fire to using electric stoves, to baking in various types of ovens, reflecting unique environmental, economic, and cultural traditions and trends. The ways or types of cooking also depend on the skill and type of training an individual cook has. Cooking is done both by people in their own dwellings and by professional cooks and chefs in restaurants and other food establishments. Cooking can also occur through chemical reactions without the presence of heat, most notably with ceviche, a traditional South American dish where fish is cooked with the acids in lemon or lime juice.',1,'https://www.youtube.com/embed/VGQSVuNy1r4','https://upload.wikimedia.org/wikipedia/commons/4/4e/U.S._Navy_Culinary_Specialist_Seaman_Lavonne_Centeno_cooks_steak_in_the_galley_aboard_the_aircraft_carrier_USS_Nimitz_%28CVN_68%29_June_10%2C_2013%2C_while_underway_in_the_Indian_Ocean_130610-N-LP801-018.jpg');
      Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED,"videoURL",IMAGEURL) values (10,'Gardening','Gardening is the practice of growing and cultivating plants as part of horticulture. In gardens, ornamental plants are often grown for their flowers, foliage, or overall appearance; useful plants, such as root vegetables, leaf vegetables, fruits, and herbs, are grown for consumption, for use as dyes, or for medicinal or cosmetic use. Gardening is considered to be a relaxing activity for many people.',1,'https://www.youtube.com/embed/-iDsYcFp4RQ','https://upload.wikimedia.org/wikipedia/commons/0/0f/Parterre2.jpg');
    END generateHobbies;
    
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
           description,
           approved
    FROM   hobby
    ORDER BY idhobby;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'hobby.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDHobby,HobbyName,Description,Approved');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.idhobby    || ',' ||
                      cur_rec1.hobbyname    || ',' ||
                      cur_rec1.description || ',' ||cur_rec1.approved);
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
           idgrad
    FROM   usersoho
    ORDER BY iduser;
    
  v_file  UTL_FILE.FILE_TYPE;
BEGIN
  v_file := UTL_FILE.FOPEN(location     => 'EXTRACT_DIR',
                           filename     => 'usersoho.csv',
                           open_mode    => 'w',
                           max_linesize => 32767);
    UTL_FILE.PUT_LINE(v_file, 'IDPost,NameUser,SurnameUser,DateOfBirth,E-mail,IDGrad');
  FOR cur_rec1 IN c_data LOOP
    UTL_FILE.PUT_LINE(v_file,
                      cur_rec1.iduser     || ',' ||
                      cur_rec1.nameuser     || ',' ||
                      cur_rec1.surnameuser     || ',' ||
                      cur_rec1.date_of_birth     || ',' ||
                      cur_rec1.email     || ',' ||
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

CREATE OR REPLACE PROCEDURE "CIPRIAN"."PAGINARE_HOBBY_RECOMANDAT" (v_oprire IN integer, p_idUser number, c1 OUT sys_refcursor) as
  v_max_rownum number:=v_oprire*2+2;
  v_max_rn number:=v_oprire*2;
begin
  open c1 for SELECT *
  FROM ( SELECT tmp.*, rownum rn
           FROM ( select hobbyname, description from hobby h1 where h1.idHobby in 
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

create or replace procedure checkFor2(v_idUser number) as
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
  
  create or replace procedure checkFor3(v_idUser number) as
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
  
  create or replace procedure checkFor4(v_idUser number) as
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
  
  create or replace procedure checkFor5(v_idUser number) as
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
  
  create or replace procedure generateGroups(p_idUser number) as
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
  
  begin
    generateGroups(1343923862291333);
  end;
  
      select * from groups g join usergroup u on g.idgroup=u.idgroup where u.iduser=1343923862291333 ;