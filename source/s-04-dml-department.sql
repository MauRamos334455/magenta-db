\qecho ================== INSERTING INTO DEPARTMENT ==================

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DID',
    'Departamento de Investigación y Desarrollo',
    4
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DSA',
    'Departamento de Servicios Académicos',
    5
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DSC',
    'Departamento de Seguridad en Cómputo',
    6
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DROS',
    'Departamento de Redes y Operación de Servidores',
    7
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DP',
    'Departamento de Pedagogía',
    8
  );  