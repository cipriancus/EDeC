set serveroutput on;
ALTER TABLE UserHobby DROP CONSTRAINT pk_IDs;
/
ALTER TABLE UserHobby DROP CONSTRAINT fk_UserHobby;
/
ALTER TABLE HobbyPost DROP CONSTRAINT fk_HobbyPost;
/
ALTER TABLE UsersOho DROP CONSTRAINT pk_idUser;
/
drop trigger autoincrementIdHobby;
/
drop trigger autoincrementIdPost;
/
drop index emailIndex;
/
drop index idHobbyIndex;
/
drop table HobbyPost;
/
drop table UserHobby;
/
drop table Hobby;
/
drop table grades;
/
drop table UsersOho;
/

create table UsersOho(
  idUser number default 0, -- cheie primara
  nameUser varchar2(20) not null,
  surnameUser varchar2(30) not null,
  date_of_birth date,
  email varchar2(60) not null,
  idGrad number default 2 -- nu se trece, gradul e setat de admin
);
/

create table grades
(
  idGrad number,
  numeGrad varchar2(15)
);
/
create table UserHobby(
  idUser number, -- cheie straina
  idHobby number-- cheie straina
);
/

create table Hobby(
  idHobby number,
  hobbyname varchar2(20),
  description varchar2(1500),
  approved number
);
/

create table HobbyPost( -- proiect cu caracter de socializare
  idPost number default 0,
  idHobby number,
  idUser number,
  message varchar2(500),
  date_of_post date default current_date
);
/

CREATE OR REPLACE PACKAGE generator IS
     PROCEDURE generateHobbies;
     PROCEDURE generateGrades;
END generator;
/
  CREATE OR REPLACE PACKAGE BODY generator IS  
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

ALTER TABLE UsersOho
ADD CONSTRAINT pk_idUser PRIMARY KEY (idUser);
/
ALTER TABLE UserHobby
ADD CONSTRAINT pk_IDs PRIMARY KEY(idUser,idHobby);
/

CREATE OR REPLACE PACKAGE validator IS
     FUNCTION validateFlName (p_name varchar2) return number;
     FUNCTION validateBirthDate (p_bd date) return number;
     FUNCTION validateEmail (p_email varchar2) return number;
END validator;
/

CREATE OR REPLACE PACKAGE BODY validator IS
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
          v_oldy:=to_date('1800-01-01','yyyy-mm-dd');
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

begin -- pentru initializarea informatiilor
  GENERATOR.GENERATEGRADES();
  GENERATOR.GENERATEHOBBIES();
end;
/

  ALTER TABLE UserHobby ADD CONSTRAINT fk_UserHobby FOREIGN KEY (idUser)
  REFERENCES UsersOho(idUser) ON DELETE CASCADE;
  /
  
  ALTER TABLE HobbyPost ADD CONSTRAINT fk_HobbyPost FOREIGN KEY (idUser)
  REFERENCES UsersOho(idUser) ON DELETE CASCADE;
  /
  
CREATE INDEX emailIndex ON UsersOho (email);
/

CREATE INDEX idHobbyIndex ON HobbyPost (idHobby);
/

 create or replace trigger autoincrementIdHobby after insert on Hobby
  declare
    v_lastid number;
  begin
    select max(idHobby) into v_lastid from Hobby;
    update Hobby set idHobby=v_lastid+1 where idHobby=0;
  end;
 /
 create or replace trigger autoincrementIdPost after insert on HobbyPost
  declare
    v_lastid number;
  begin
    select max(idPost) into v_lastid from hobbypost;
    update hobbypost set idPost=v_lastid+1 where idPost=0;
  end;
 /
 

CREATE OR REPLACE PACKAGE userSkills IS
     FUNCTION loginUser(p_idUser number) return number;
     PROCEDURE addUser(p_idUser number,p_nameUser varchar2, p_surnameUser varchar2, p_dataBirth varchar2, p_email varchar2);
     PROCEDURE joinToNewHobby(p_email varchar2, p_nameHobby varchar2);
     PROCEDURE postIt(p_email varchar2, p_hobby varchar2, p_message varchar2);
     PROCEDURE updateUser(p_idUser number, p_name varchar2, p_surname varchar2, p_date_of_birth varchar2, p_email varchar2);
     PROCEDURE newHobby(p_nameHobby varchar2, p_description varchar2);
END userSkills;
/

CREATE OR REPLACE PACKAGE BODY userSkills IS
  data_nasterii_invalida EXCEPTION;
    PRAGMA EXCEPTION_INIT(data_nasterii_invalida, -20004);
  email_invalid EXCEPTION;
    PRAGMA EXCEPTION_INIT(email_invalid, -20005);
  user_existent EXCEPTION;
    PRAGMA EXCEPTION_INIT(user_existent, -20001);
  user_inexistent EXCEPTION;
    PRAGMA EXCEPTION_INIT(user_inexistent, -20012);
              
    FUNCTION loginUser (p_idUser number) RETURN number as
      login_failed EXCEPTION;
        PRAGMA EXCEPTION_INIT(login_failed, -20006);
      v_idUser number;
      begin
      select idUser into v_idUser from usersoho where idUser=p_idUser;
      if(v_idUser is not null) then return 1;
        else raise login_failed; end if;
      return 0;
        EXCEPTION
            WHEN login_failed THEN
              raise_application_error (-20006,'Date de autentificare invalide.');
    END loginUser;
    
        -- nu mai validez anumite date, sunt preluate de la facebook
    PROCEDURE addUser (p_idUser number, p_nameUser varchar2, p_surnameUser varchar2, p_dataBirth varchar2, p_email varchar2) IS
    user_existent_id EXCEPTION;
        PRAGMA EXCEPTION_INIT(user_existent_id, -20008);
    v_flag number;
    v_nrRowsSameEmail number;
  BEGIN
    select count(*) into v_flag from UsersOho where idUser=p_idUser;
      if(v_flag>0) then raise user_existent_id;
        else
          v_flag:=validator.validateBirthDate(to_date(p_dataBirth,'YYYY-MM-DD'));
          if(v_flag=0) then raise data_nasterii_invalida;
          else
            v_flag:=validator.validateEmail(p_email);
            if(v_flag=0) then raise email_invalid;
            else
                select count(*) into v_nrRowsSameEmail from usersoho where email=p_email;
                if(v_nrRowsSameEmail>0) then raise user_existent;
                else
                  insert into usersoho values (p_idUser, p_nameUser, p_surnameUser, to_date(p_dataBirth,'yyyy-mm-dd'), p_email, 2);
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
                    v_set:=v_set||' date_of_birth = to_date('''||p_date_of_birth||''',''yyyy-mm-dd'') ,';
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
 
CREATE OR REPLACE PACKAGE adminSkills IS
     PROCEDURE setGrade(p_email varchar2, p_grade varchar2);
     PROCEDURE deleteUser(p_email varchar2);
     PROCEDURE approveHobby(p_response number, p_hobbyname varchar2); -- 1 daca da, 0 daca nu
END adminSkills;
/

CREATE OR REPLACE PACKAGE BODY adminSkills IS
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

begin
  dbms_output.put_line('=========================================');
end;
/