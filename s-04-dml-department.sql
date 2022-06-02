\qecho ================== INSERTING INTO DEPARTMENT ==================

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'CDD',
    'Coordinación del Centro de Docencia',
    '3' --Margarita Ramírez Galindo
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'CO',
    'Formación y Desarrollo en Cómputo',
    '4' --Gabriel López Domínguez
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DI',
    'Área Disciplinar e Investigación Educativa',
    '5' --Martha Rosa Del Moral Nieto
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DP',
    'Formación y Desarrollo Didáctico Pedagógico',
    '6' --Arely Hernández Valverde
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'DH',
    'Formación en Desarrollo Humano',
    '7'--María Elena Cano Salazar
  );

INSERT INTO DEPARTMENT (DEPARTMENT_ID, ABBREVIATION, NAME, ADMINISTRATOR_ID)
VALUES
  (
    NEXTVAL('DEPARTMENT_SEQ'),
    'GV',
    'Área de Gestión y Vinculación',
    '8'--Jacquelyn Martínez Alavez
  );  