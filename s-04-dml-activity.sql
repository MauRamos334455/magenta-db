\qecho ================== INSERTING INTO ACTIVITY ==================

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7 y 9 de Agosto',
    'LIV',
    80,
    100.00,
    10,
    5,
    4,
    3
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7 y 9 de Agosto',
    'LIV',
    80,
    200.00,
    20,
    5,
    2,
    4
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    3,
    1 
  );