\qecho ================== INSERTING INTO ADMINISTRATOR ==================

-- SYSTEM MAINTANANCE ACCOUNT FOR DEVELOPING
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Mauricio',
    'Ramos',
    'Ing.',
    'M',
    'jefe_did',
    crypt('M4NT3N1M13NT0#', gen_salt('bf')),
    'J',
    (SELECT department_id FROM department WHERE abbreviation='DID')
  );

-- SYSTEM MAINTANANCE ACCOUNT FOR DEVELOPING
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Carolina',
    'Kennedy',
    'Ing.',
    'F',
    'jefe_dsa',
    crypt('M4NT3N1M13NT0#', gen_salt('bf')),
    'J',
    (SELECT department_id FROM department WHERE abbreviation='DSA')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Josefina',
    'Pérez',
    'Vallarta',
    'Mtra.',
    'F',
    'ayudante_did',
    crypt('D3S4RR0LL0#', gen_salt('bf')),
    'A',
    (SELECT department_id FROM department WHERE abbreviation='DID')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Aurelio',
    'Rodríguez',
    'Jiménez',
    'Dr.',
    'M',
    'ayudante_dsa',
    crypt('S3RV1C105#', gen_salt('bf')),
    'A',
    (SELECT department_id FROM department WHERE abbreviation='DSA')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Andrea',
    'Solorzano',
    'Rosales',
    'Dra.',
    'F',
    'jefe_dsc',
    crypt('R3D35#', gen_salt('bf')),
    'J',
    (select department_id from department where abbreviation='DSC')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Santiago',
    'Juárez',
    'Mejía',
    'Lic.',
    'M',
    'jefe_dros',
    crypt('S3RV1D0R35#', gen_salt('bf')),
    'J',
    (select department_id from department where abbreviation='DROS')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ROLE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Julia',
    'Trujillo',
    'Villareal',
    'Dra.',
    'F',
    'jefe_dp',
    crypt('P3D4G0G14#', gen_salt('bf')),
    'J',
    (select department_id from department where abbreviation='DP')
  );