\qecho ================== INSERTING INTO ADMINISTRATOR ==================

-- SYSTEM MAINTANANCE ACCOUNT FOR DEVELOPING
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Mauricio',
    'Ramos',
    'Ing.',
    'M',
    'mantenimiento_mr',
    crypt('M4NT3N1M13NT0#', gen_salt('bf')),
    true
  );

-- SYSTEM MAINTANANCE ACCOUNT FOR DEVELOPING
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Carolina',
    'Kennedy',
    'Ing.',
    'F',
    'mantenimiento_ck',
    crypt('M4NT3N1M13NT0#', gen_salt('bf'))
    true
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Josefina',
    'Pérez',
    'Vallarta',
    'Mtra.',
    'F',
    'jefe_did',
    crypt('D3S4RR0LL0#', gen_salt('bf')),
    true,
    (select department_id from department where abbreviation='DID')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Aurelio',
    'Rodríguez',
    'Jiménez',
    'Dr.',
    'M',
    'jefe_dsa',
    crypt('S3RV1C105#', gen_salt('bf')),
    true,
    (select department_id from department where abbreviation='DSA')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
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
    true,
    (select department_id from department where abbreviation='DSC')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
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
    true,
    (select department_id from department where abbreviation='DROS')
  );

-- DEPARTMENT BOSS
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  DEGREE, GENDER, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
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
    true,
    (select department_id from department where abbreviation='DP')
  );

-- DEPARTMENT USER ACCOUNT
INSERT INTO ADMINISTRATOR (ADMINISTRATOR_ID, NAME, LAST_NAME, MOTHERS_LAST_NAME,
  GENDER, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ADMINISTRATOR_SEQ'),
    'Aurelio',
    'Domínguez',
    'Peralta',
    'M',
    'staff_did',
    crypt('D3S4RR0LL0_ST#', gen_salt('bf')),
    false,
    (select department_id from department where abbreviation='DID')
  );