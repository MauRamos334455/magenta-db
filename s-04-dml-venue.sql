\qecho ================== INSERTING INTO VENUE ==================

INSERT INTO VENUE (VENUE_ID, NAME, CAPACITY, LOCATION)
VALUES
  (
    NEXTVAL('VENUE_SEQ'),
    'Audotorio Sotero Prieto',
    200,
    'Anexo Facultad de Ingeniería'
  );

INSERT INTO VENUE (VENUE_ID, NAME, CAPACITY, LOCATION)
VALUES
  (
    NEXTVAL('VENUE_SEQ'),
    'CDD Sala de Cómputo',
    16,
    'Anexo Facultad de Ingeniería, Anexo'
  );

INSERT INTO VENUE (VENUE_ID, NAME, CAPACITY, LOCATION)
VALUES
  (
    NEXTVAL('VENUE_SEQ'),
    'CDD Sala de Cómputo y herramientas en línea',
    30,
    'Anexo Facultad de Ingeniería,'
  );

INSERT INTO VENUE (VENUE_ID, NAME, CAPACITY, LOCATION)
VALUES
  (
    NEXTVAL('VENUE_SEQ'),
    'CDD Sala de Seminarios',
    25,
    'Anexo Facultad de Ingeniería'
  );

INSERT INTO VENUE (VENUE_ID, NAME, CAPACITY, LOCATION)
VALUES
  (
    NEXTVAL('VENUE_SEQ'),
    'DCB Salón J107',
    20,
    'Anexo Facultad de Ingeniería'
  );