\qecho ================== INSERTING INTO ACTIVITY CATALOGUE ==================

--------- DEPARTMENT 1 (DID)
INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE, 
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCT178',
    'Introducción a la programación con Python',
    8,
    'CT',
    '2022-02-05',
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCU179',
    'Modelado relacional de bases de datos con PostgreSQL',
    8,
    'CU',
    '2022-02-05',
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDFO180',
    'AUTOCAD Avanzado',
    8,
    'FO',
    '2022-02-05',
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDEV181',
    'Creación de páginas web.',
    8,
    'EV',
    '2022-02-05',
    1
  );

--------- DEPARTMENT 2 (DSA)
INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSACT129',
    'Office 365 Intermedio.',
    15,
    'CT',
    '2018-05-18',
    2
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSACU130',
    'Excel Básico.',
    15,
    'CU',
    '2018-05-18',
    2
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSATA131',
    'Manejamiento de GSuite.',
    15,
    'TA',
    '2018-05-18',
    2
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSAFO132',
    'Introducción a las Clases Remotas Virtuales.',
    15,
    'FO',
    '2018-05-18',
    2
  );

--------- DEPARTMENT 3 (DSC)
INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSCCO021',
    '¿Qué es la Seguridad Informática?',
    12,
    'CO',
    '2018-05-18',
    3
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSCCU022',
    'Instalación y manejo de KaliLinux.',
    12,
    'CU',
    '2018-05-18',
    3
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSCEV022',
    'Cómo Crear y Administrar un Honeypot en GNU/Linux.',
    12,
    'EV',
    '2018-05-18',
    3
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DSCFO022',
    'Seguridad en Internet con los certificados SSL y HTTPS',
    12,
    'FO',
    '2018-05-18',
    3
  );

--------- DEPARTMENT 4 (DROS)
INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DROSCT023',
    'Administración de servidores con CentOS.',
    20,
    'CT',
    '2012-12-12',
    4
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DROSCU158',
    'Administración de Servidores con Windows Server.',
    20,
    'CU',
    '2012-12-12',
    4
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DROSCU157',
    'Administración de Servidores en AWS.',
    20,
    'TA',
    '2012-12-12',
    4
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DROSCO012',
    'Introducción a Arquitecturas en Nube.',
    20,
    'CO',
    '2018-05-18',
    4
  );

--------- DEPARTMENT 5 (DP)
INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DPCT011',
    'Relaciones Interpersonales.',
    20,
    'CT',
    '2018-05-18',
    5
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DPTA304',
    'Formación de Instructores.',
    20,
    'TA',
    '2018-05-18',
    5
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DPCU305',
    'Salud Emocional.',
    20,
    'CU',
    '2018-05-18',
    5
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DPEV017',
    'El Proceso Didáctico y su Relación con la Pedagogía.',
    20,
    'EV',
    '2018-05-18',
    5
  );

--------- MODULES FOR DIPLOMAS
INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID, MODULE, DIPLOMA_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCT178',
    'Introducción a las bases de datos relacionales.',
    8,
    'DI',
    '2022-02-05',
    1,
    1,
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID, MODULE, DIPLOMA_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCT178',
    'Diseño de bases de datos relacionales con MariaDB.',
    8,
    'DI',
    '2022-02-05',
    1,
    2,
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID, MODULE, DIPLOMA_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCT178',
    'Administración de bases de datos relacionales con MariaDB',
    8,
    'DI',
    '2022-02-05',
    1,
    3,
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID, MODULE, DIPLOMA_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCT178',
    'Diseño de bases de datos relacionales distribuidas con diversos RDBMS',
    8,
    'DI',
    '2022-02-05',
    1,
    4,
    1
  );

INSERT INTO
  ACTIVITY_CATALOGUE (ACTIVITY_CATALOGUE_ID, KEY, NAME, HOURS, TYPE,
                      CREATION_DATE, DEPARTMENT_ID, MODULE, DIPLOMA_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_CATALOGUE_SEQ'),
    'DIDCT178',
    'Estrategias de mantenimiento para bases de datos relacionales.',
    8,
    'DI',
    '2022-02-05',
    1,
    5,
    1
  );