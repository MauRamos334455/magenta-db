\qecho ================== INSERTING INTO ACCOUNT ==================

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Coordinación del Centro de Docencia',
    'CoordCDD',
    'COORD3#',
    true,
    (select department_id from department where abbreviation='CDD')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Gestión y Vinculación',
    'Ges_Vinc',
    'SuperUsuario1',
    true,
    (select department_id from department where abbreviation='GV')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Soporte Area',
    'SoporteArea',
    'Usuario1#',
    false,
    (select department_id from department where abbreviation='GV')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Formácion y Desarrollo en Cómputo',
    'InvitadoCO',
    'Usuario#2COa1',
    false,
    (select department_id from department where abbreviation='CO')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Área Disciplinar e Investigación Educativa',
    'InvitadoDI',
    'Usuario#2Dib2',
    false,
    (select department_id from department where abbreviation='DI')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Formación en Desarrollo Humano',
    'InvitadoDH',
    'Usuario#2DHc3',
    false,
    (select department_id from department where abbreviation='DH')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Formación y Desarrollo Didáctico Pedagógico',
    'InvitadoDP',
    'Usuario#2DPd4',
    false,
    (select department_id from department where abbreviation='DP')
  );