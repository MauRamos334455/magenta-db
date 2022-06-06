\qecho ================== INSERTING INTO ACCOUNT ==================

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Coordinación del Centro de Docencia',
    'CoordCDD',
    crypt('COORD3#', gen_salt('bf')),
    true,
    (select department_id from department where abbreviation='CDD')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Gestión y Vinculación',
    'Ges_Vinc',
    crypt('SuperUsuario1', gen_salt('bf')),
    true,
    (select department_id from department where abbreviation='GV')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Soporte Area',
    'SoporteArea',
    crypt('Usuario1#', gen_salt('bf')),
    false,
    (select department_id from department where abbreviation='GV')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Formácion y Desarrollo en Cómputo',
    'InvitadoCO',
    crypt('Usuario#2COa1', gen_salt('bf')),
    false,
    (select department_id from department where abbreviation='CO')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Área Disciplinar e Investigación Educativa',
    'InvitadoDI',
    crypt('Usuario#2Dib2', gen_salt('bf')),
    false,
    (select department_id from department where abbreviation='DI')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Formación en Desarrollo Humano',
    'InvitadoDH',
    crypt('Usuario#2DHc3', gen_salt('bf')),
    false,
    (select department_id from department where abbreviation='DH')
  );

INSERT INTO ACCOUNT (ACCOUNT_ID, NAME, USERNAME, PASSWORD, ADMIN, DEPARTMENT_ID)
VALUES
  (
    NEXTVAL('USER_SEQ'),
    'Invitado Formación y Desarrollo Didáctico Pedagógico',
    'InvitadoDP',
    crypt('Usuario#2DPd4', gen_salt('bf')),
    false,
    (select department_id from department where abbreviation='DP')
  );