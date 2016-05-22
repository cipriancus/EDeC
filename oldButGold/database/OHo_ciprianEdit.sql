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
	"APPROVED" NUMBER
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
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (1,'Fotbal','Fotbalul este un sport de echipã ce se disputã între douã echipe alcãtuite din 11 jucãtori fiecare. La începutul secolului al XXI-lea era jucat de peste 250 de milioane de jucãtori în peste 200 de ?ãri, ceea ce îl face cel mai popular sport din lume',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (2,'Box','Boxul (sau pugilismul) este un sport mar?ial strãvechi (probabil cel mai vechi sport mar?ial, cu origini preistorice), în care doi concuren?i, cu greutã?i similare, luptã cu ajutorul pumnilor, într-o serie de reprize, numite runde. Victoria este ob?inutã in urma punctelor date pentru lovituri de catre juriu, sau atunci când adversarul este doborât la pâmânt ?i nu reu?e?te sã se ridice înainte ca arbitrul sã termine de numãrat pânã la 10, (englezã Knockout sau KO) sau când adversarul este prea rãnit pentru a continua (englezã Technical Knockout sau TKO).',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (3,'Inot','Înotul este o mi?care de deplasare a oamenilor sau a animalelor prin apã, de obicei fãrã niciun fel de asisten?ã artificialã. Tipurile sau stilurile de înot sunt craul, bras, fluture sau spate, dar ?i anumite derivate ale acestora, de exemplu bras lung, spate dublu etc.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (4,'Baschet','Baschetul este unul dintre cele mai rãspândite sporturi de echipã din lume; se caracterizeazã prin fine?ea, precizia ?i fantezia exerci?iilor tehnice ?i tactice, prin talia înaltã ?i calitã?ile fizice deosebite ale sportivilor, toate acestea implicate într-o luptã sportivã care pretinde spirit de echipã ?i de sacrificiu, inteligen?ã ?i rezisten?ã nervoasã.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (5,'Tenis','Tenisul este un sport jucat fie între doi jucãtori (simplu), fie între douã echipe a câte doi jucãtori (dublu). Jucãtorii folosesc o rachetã pe bazã de racordaj pentru a lovi o minge de cauciuc acoperitã cu pâslã peste fileu, mingea trebuind sã ajungã în terenul adversarului.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (6,'Pescuit','Pescuitul este activitatea de a prinde cu ajutorul unor instrumente speciale diverse varietã?i de pe?te sau alte vietã?i acvatice. Pescuitul mai poate fi considerat ca o extrac?ie a organismelor acvatice, din mediul în care au crescut, cu diverse scopuri, precum alimentare, recreere (pescuit sportiv), ornamentare (captura speciilor ornamentale) sau ?eluri industriale.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (7,'Dans','Dansul este un mijloc artistic de exprimare a unui mesaj printr-o succesiune de mi?cãri ritmice, variate ?i expresive ale corpului, executate în ritmul muzicii, având caracter religios, de artã sau de divertisment.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (8,'Muzica','Muzica (din gr. mousik?) este arta combinãrii notelor în succesiune ?i simultan într-o formã plãcutã estetic, organizarea ritmicã a acestor note ?i integrarea lor într-o lucrare completã.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (9,'Bucatarie','Bucãtãria reprezintã arta ?i tehnica preparãrii alimentelor destinate consumului uman. Bucãtãria poate cuprinde toate no?iunile practice referitoare la ingrediente, prepararea lor, instrumentele folosite, modurile de gãtit ?i diferen?ele între acestea. Este asociatã artei mesei ?i gastronomiei.',1);
Insert into CIPRIAN.HOBBY (IDHOBBY,HOBBYNAME,DESCRIPTION,APPROVED) values (10,'Gradinarit','Grãdinãritul reprezintã activitatea de cultivare a unor plante ornamentale sau nu în spa?ii special amenajate (grãdini). Grãdinãritul poate fi realizat de amatori sau grãdinari profesioni?ti.',1);
REM INSERTING into CIPRIAN.HOBBYPOST
SET DEFINE OFF;
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (1,1,1343923862291333,'Ciprian',to_date('01-05-2016','DD-MM-YYYY'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (2,1,1343923862291333,'A doua postare',to_date('02-05-2016','DD-MM-YYYY'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (3,2,1343923862291333,'A treia postare',to_date('04-05-2016','DD-MM-YYYY'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (4,2,1155743477821938,'Sunt Maria',to_date('04-05-2016','DD-MM-YYYY'));
Insert into CIPRIAN.HOBBYPOST (IDPOST,IDHOBBY,IDUSER,MESSAGE,DATE_OF_POST) values (5,2,1628126750843339,'Sunt mama lui Ciprian',to_date('04-05-2016','DD-MM-YYYY'));
REM INSERTING into CIPRIAN.NUMEFAMSG
SET DEFINE OFF;

Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,1);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1343923862291333,3);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1155743477821938,2);
Insert into CIPRIAN.USERHOBBY (IDUSER,IDHOBBY) values (1628126750843339,2);
REM INSERTING into CIPRIAN.USERSOHO
SET DEFINE OFF;
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1155743477821938,'Maria','Anghelache',to_date('03-AUG-95','DD-MON-RR'),'maria.anghelache@yahoo.com',2,'EAAWea65wWZAIBAOjWv9ZAdvrb7NzxJ4HqwSQC7HxHexy5DAqBfttgbF3Mqpi4uiNTISBuT3oTjsXrc7D1lHZB5i7PS5fGpO7FxuLZBHypqpEJq33UaqExxcHvsi31q4Y2l5xln6NnKpLXFOPUnxoB1YdrkFQ65IZD&expires=5183841
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.2.50.50/p50x50/12301546_1041987689197518_5855819531228058744_n.jpg?oh=489bb024c86840aefa4008ea76e7a76e&oe=57DD8CBB');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1628126750843339,'Gabriela','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'gabrielacusm@gmail.com',2,'EAAWea65wWZAIBANJpmaUhUuhHnPFDTaCHHZAia3AJnJw4bpSHOZCUHRpeLv1vdECwR1K6xEVmbKGZCCMXanBI0BaZBDDr8OveFMQWRR1yfsVmkS5KlMfJBCB1Lseg72jYVBwzISaZCF9MtRoPECTwZAmWDSk3ZApCozqw6BE0yWWKQZDZD&expires=5183510
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c0.19.50.50/p50x50/12439219_1554899798166035_1610282242355468738_n.jpg?oh=297705f12b2c2d1c5938ca91279d3829&oe=57A7B196');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1097717203618851,'Grosu','Ilie Andrei',to_date('03-AUG-95','DD-MON-RR'),'an3y_capitano@yahoo.com',2,'EAAWea65wWZAIBAHz6PF4TQrDZAtBbXLYk3NjjkgZAi27XVu7GgzEDZA6mZC3Gc6rqovqwOjcV9AhSjYRQ9UtNNBUdrm1eMHPu1RqWK2pN2OZCOyCDBBLDYUUPOjJXZA9Din8DIODmwM3K3cDu3ZBxXbVrufQa4D6m99BIunE4mnfVQZDZD&expires=5183999
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13082690_1085366341520604_6505151982216895306_n.jpg?oh=caa3a8ccd479cd0959a616fe5f3b6a08&oe=579C4B5F');
Insert into CIPRIAN.USERSOHO (IDUSER,NAMEUSER,SURNAMEUSER,DATE_OF_BIRTH,EMAIL,IDGRAD,AUTHTOKEN,AUTHSITE,PHOTOURL) values (1343923862291333,'Ciprian','Cusmuliuc',to_date('03-AUG-95','DD-MON-RR'),'cipc_20002002@yahoo.com',1,'EAAWea65wWZAIBAKRDZCRvmUzXbbk8Fqw3Ta8VMsPPmU3qG4OZBl5mTjc7rDvGW6HVvIItQGYY3DUuWt00Q8W6Hq5RA7bPUbZCZBlqZBu9BMg9wxhUzCZBnwYxwfmR54L5BzG13qw9LVSnxjnHicQTakM5Aaq7b3SHtSgZBFZBvjbCgwZDZD&expires=5157357
','Facebook','https://scontent.xx.fbcdn.net/v/t1.0-1/c8.0.50.50/p50x50/1380170_752111984805860_9520347_n.jpg?oh=dcf9f3417545fd712b2e8f35c800cab1&oe=57A83903');
--------------------------------------------------------
--  Constraints for Table USERSOHO
--------------------------------------------------------

  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("SURNAMEUSER" NOT NULL ENABLE);
  ALTER TABLE "CIPRIAN"."USERSOHO" MODIFY ("NAMEUSER" NOT NULL ENABLE);
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
      INSERT INTO Hobby VALUES (1, 'Fotbal','Fotbalul este un sport de echipã ce se disputã între douã echipe alcãtuite din 11 jucãtori fiecare. La începutul secolului al XXI-lea era jucat de peste 250 de milioane de jucãtori în peste 200 de ?ãri, ceea ce îl face cel mai popular sport din lume',1);
      INSERT INTO Hobby VALUES (2, 'Box','Boxul (sau pugilismul) este un sport mar?ial strãvechi (probabil cel mai vechi sport mar?ial, cu origini preistorice), în care doi concuren?i, cu greutã?i similare, luptã cu ajutorul pumnilor, într-o serie de reprize, numite runde. Victoria este ob?inutã in urma punctelor date pentru lovituri de catre juriu, sau atunci când adversarul este doborât la pâmânt ?i nu reu?e?te sã se ridice înainte ca arbitrul sã termine de numãrat pânã la 10, (englezã Knockout sau KO) sau când adversarul este prea rãnit pentru a continua (englezã Technical Knockout sau TKO).',1);
      INSERT INTO Hobby VALUES (3, 'Inot','Înotul este o mi?care de deplasare a oamenilor sau a animalelor prin apã, de obicei fãrã niciun fel de asisten?ã artificialã. Tipurile sau stilurile de înot sunt craul, bras, fluture sau spate, dar ?i anumite derivate ale acestora, de exemplu bras lung, spate dublu etc.',1);
      INSERT INTO Hobby VALUES (4, 'Baschet','Baschetul este unul dintre cele mai rãspândite sporturi de echipã din lume; se caracterizeazã prin fine?ea, precizia ?i fantezia exerci?iilor tehnice ?i tactice, prin talia înaltã ?i calitã?ile fizice deosebite ale sportivilor, toate acestea implicate într-o luptã sportivã care pretinde spirit de echipã ?i de sacrificiu, inteligen?ã ?i rezisten?ã nervoasã.',1);
      INSERT INTO Hobby VALUES (5, 'Tenis','Tenisul este un sport jucat fie între doi jucãtori (simplu), fie între douã echipe a câte doi jucãtori (dublu). Jucãtorii folosesc o rachetã pe bazã de racordaj pentru a lovi o minge de cauciuc acoperitã cu pâslã peste fileu, mingea trebuind sã ajungã în terenul adversarului.',1);
      INSERT INTO Hobby VALUES (6, 'Pescuit','Pescuitul este activitatea de a prinde cu ajutorul unor instrumente speciale diverse varietã?i de pe?te sau alte vietã?i acvatice. Pescuitul mai poate fi considerat ca o extrac?ie a organismelor acvatice, din mediul în care au crescut, cu diverse scopuri, precum alimentare, recreere (pescuit sportiv), ornamentare (captura speciilor ornamentale) sau ?eluri industriale.',1);
      INSERT INTO Hobby VALUES (7, 'Dans','Dansul este un mijloc artistic de exprimare a unui mesaj printr-o succesiune de mi?cãri ritmice, variate ?i expresive ale corpului, executate în ritmul muzicii, având caracter religios, de artã sau de divertisment.',1);
      INSERT INTO Hobby VALUES (8, 'Muzica','Muzica (din gr. mousik?) este arta combinãrii notelor în succesiune ?i simultan într-o formã plãcutã estetic, organizarea ritmicã a acestor note ?i integrarea lor într-o lucrare completã.',1);
      INSERT INTO Hobby VALUES (9, 'Bucatarie','Bucãtãria reprezintã arta ?i tehnica preparãrii alimentelor destinate consumului uman. Bucãtãria poate cuprinde toate no?iunile practice referitoare la ingrediente, prepararea lor, instrumentele folosite, modurile de gãtit ?i diferen?ele între acestea. Este asociatã artei mesei ?i gastronomiei.',1);
      INSERT INTO Hobby VALUES (10, 'Gradinarit','Grãdinãritul reprezintã activitatea de cultivare a unor plante ornamentale sau nu în spa?ii special amenajate (grãdini). Grãdinãritul poate fi realizat de amatori sau grãdinari profesioni?ti.',1);
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
    
    PROCEDURE joinToNewHobby(p_email varchar2, p_nameHobby varchar2) as
          denumire_hobby_invalida EXCEPTION;
            PRAGMA EXCEPTION_INIT(denumire_hobby_invalida, -20010);
          hobby_inexistent EXCEPTION;
            PRAGMA EXCEPTION_INIT(hobby_inexistent, -20011);
            v_existHobby number;
            v_rightName number;
            v_existUser number;
        BEGIN
          select count(*) into v_existUser from UsersOho where email=p_email;
          if(v_existUser=0) then raise user_inexistent;
            else
            v_rightName:=validator.validateFlName(p_nameHobby);
            if(v_rightName=0) then raise denumire_hobby_invalida;
              else
              select count(*) into v_existHobby from Hobby where hobbyname=p_nameHobby and approved=1;
              if(v_existHobby=0) then raise hobby_inexistent;
                else
                  select idUser into v_existUser from UsersOho where email=p_email;
                  select idHobby into v_rightName from Hobby where hobbyname=p_nameHobby;-- rescriu valoarea lui v_rightName si pun in aceasta variabila
                  insert into userhobby values(v_existUser, v_rightName);                    -- id-ul hobbiului dorit
              end if;
            end if;
        end if;
        EXCEPTION
              WHEN denumire_hobby_invalida THEN
                raise_application_error (-20010,'Denumire hobby invalida.');
              WHEN hobby_inexistent THEN
                raise_application_error (-20011, 'Hobby-ul cu numele '|| p_nameHobby || ' nu exista in baza de date.');
              WHEN user_inexistent THEN
                raise_application_error (-20012, 'Utilizatorul cu email-ul '|| p_email || ' nu exista in baza de date.');
        END joinToNewHobby;
    
    PROCEDURE postIt(p_email varchar2, p_hobby varchar2, p_message varchar2) as
        denumire_hobby_invalida EXCEPTION;
          PRAGMA EXCEPTION_INIT(denumire_hobby_invalida, -20040);
        hobby_inexistent EXCEPTION;
          PRAGMA EXCEPTION_INIT(hobby_inexistent, -20041);
        hobby_necorespunzator EXCEPTION;
          PRAGMA EXCEPTION_INIT(hobby_necorespunzator, -20042);
          v_flag number;
          v_idHobby number;
          v_idUser number;
      BEGIN
        v_flag:=validator.validateEmail(p_email);
        if(v_flag=0) then raise email_invalid;
        else
          select count(*) into v_flag from usersoho where email=p_email;
          if(v_flag=0) then raise user_inexistent;
          else
              select count(*) into v_flag from Hobby where hobbyname=p_hobby and approved=1;
              if(v_flag=0) then raise hobby_inexistent;
              else
                select idUser into v_idUser from usersoho where email=p_email;
                select idHobby into v_idHobby from hobby where hobbyname=p_hobby;
                select count(*) into v_flag from userhobby where idUser=v_idUser and idHobby=v_idHobby;
                if(v_flag=0) then raise hobby_necorespunzator;
                else
                  insert into hobbypost values(0,v_idHobby, v_idUser, p_message, current_date);
                end if;
              end if;
          end if;
        end if;
        EXCEPTION
            WHEN email_invalid THEN
              raise_application_error (-20005,'Email-ul '|| p_email || ' este invalid.');
            WHEN user_inexistent THEN
              raise_application_error (-20012, 'Utilizatorul cu email-ul '|| p_email || ' nu exista in baza de date.');
            WHEN denumire_hobby_invalida THEN
              raise_application_error (-20040,'Hobby-ul cu numele '|| p_hobby || ' nu poate fi adaugat in baza de date.');
            WHEN hobby_inexistent THEN
              raise_application_error (-20041,'Hobby-ul cu numele '|| p_hobby || ' nu exista in baza de date.');
            WHEN hobby_necorespunzator THEN
              raise_application_error (-20042, 'Userul cu email-ul '|| p_email || ' nu poate posta in hobby-ul ' || p_hobby || ' .');
      END postIt;
      
      -- aceasta procedura se apleaza doar daca login-ul s-a realizat cu succes!!!! ==========================================
    PROCEDURE updateUser(p_idUser number, p_name varchar2, p_surname varchar2, p_date_of_birth varchar2, p_email varchar2) AS 
                                                -- asta e automata daca detecteaza modificari
        user_invalid EXCEPTION;
          PRAGMA EXCEPTION_INIT(user_invalid, -20045);
        v_CursorID NUMBER; -- Variable assigned to value from OPEN_CURSOR
        v_CreateTableString VARCHAR2(500); -- SQL stored as string to create table
        v_NUMRows INTEGER; -- Number of rows processed - of no use
        v_flag number;
        v_set varchar2(500):='';
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
                 end if;
                 if (v_set is not null) then
                     v_set:=substr(v_set, 0, length(v_set)-2);
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
    
  PROCEDURE newHobby(p_nameHobby varchar2, p_description varchar2) is
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
            insert into hobby values(0,p_nameHobby,v_description,0);
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
