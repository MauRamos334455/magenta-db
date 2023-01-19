\qecho ================== INSERTING INTO ACTIVITY ==================
-- ACTIVITY CATALOGUE ID: 1
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, 
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, 
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7 y 9 de Agosto',
    'LIV',
    80,
    100.00,
    60,
    5,
    4,
    1
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, 
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, 
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7 y 9 de Agosto',
    'LIV',
    80,
    100.00,
    60,
    5,
    4,
    1
  );

-- ACTIVITY CATALOGUE ID: 2
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, 
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, 
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    's',
    '13:00',
    '15:00',
    'Los días 15, 27 y 29 de Septiembre',
    'IV',
    80,
    100.00,
    60,
    5,
    1,
    2
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, 
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID, 
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    's',
    '13:00',
    '15:00',
    'Los días 15, 27 y 29 de Septiembre',
    'IV',
    80,
    100.00,
    60,
    5,
    1,
    2
  );

-- ACTIVITY CATALOGUE ID: 3
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE, 
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Del 1 al 19 de Diciembre',
    'MIJ',
    80,
    200.00,
    20,
    5,
    2,
    3
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Del 1 al 19 de Diciembre',
    'MIJ',
    80,
    200.00,
    20,
    5,
    2,
    3
  );

-- ACTIVITY CATALOGUE ID: 4
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    's',
    '13:00',
    '15:00',
    '1,2 y 3 de Enero',
    'LMI',
    80,
    200.00,
    20,
    5,
    3,
    4
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    's',
    '13:00',
    '15:00',
    '1,2 y 3 de Enero',
    'LMI',
    80,
    200.00,
    20,
    5,
    3,
    4
  );

-- ACTIVITY CATALOGUE ID: 5
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    'i',
    '13:00',
    '15:00',
    'Del 21 al 24 de Junio',
    'MIJV',
    80,
    200.00,
    15,
    5,
    1,
    5
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    'i',
    '13:00',
    '15:00',
    'Del 21 al 24 de Junio',
    'MIJV',
    80,
    200.00,
    15,
    5,
    1,
    5
  );

-- ACTIVITY CATALOGUE ID: 6
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
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
    2,
    6
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
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
    2,
    6
  );

-- ACTIVITY CATALOGUE ID: 7
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    2,
    7
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    2,
    7
  );

-- ACTIVITY CATALOGUE ID: 8
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    4,
    8
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    4,
    8
  );

-- ACTIVITY CATALOGUE ID: 9
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    5,
    9
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    5,
    9
  );

-- ACTIVITY CATALOGUE ID: 10
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
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
    1,
    10
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
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
    1,
    10
  );

-- ACTIVITY CATALOGUE ID: 11
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7 y 9 de Agosto',
    'LIV',
    80,
    100.00,
    60,
    5,
    2,
    11
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7 y 9 de Agosto',
    'LIV',
    80,
    100.00,
    60,
    5,
    2,
    11
  );

-- ACTIVITY CATALOGUE ID: 12
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 15, 27 y 29 de Septiembre',
    'IV',
    80,
    100.00,
    60,
    5,
    3,
    12
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 15, 27 y 29 de Septiembre',
    'IV',
    80,
    100.00,
    60,
    5,
    3,
    12
  );

-- ACTIVITY CATALOGUE ID: 13
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    'i',
    '13:00',
    '15:00',
    'Del 1 al 19 de Diciembre',
    'MIJ',
    80,
    200.00,
    20,
    5,
    4,
    13
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    'i',
    '13:00',
    '15:00',
    'Del 1 al 19 de Diciembre',
    'MIJ',
    80,
    200.00,
    20,
    5,
    4,
    13
  );

-- ACTIVITY CATALOGUE ID: 14
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    's',
    '13:00',
    '15:00',
    '1,2 y 3 de Enero',
    'LMI',
    80,
    200.00,
    20,
    5,
    5,
    14
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    's',
    '13:00',
    '15:00',
    '1,2 y 3 de Enero',
    'LMI',
    80,
    200.00,
    20,
    5,
    5,
    14
  );

-- ACTIVITY CATALOGUE ID: 15
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Del 21 al 24 de Junio',
    'MIJV',
    80,
    200.00,
    15,
    5,
    1,
    15
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Del 21 al 24 de Junio',
    'MIJV',
    80,
    200.00,
    15,
    5,
    1,
    15
  );

-- ACTIVITY CATALOGUE ID: 16
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    2,
    16
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    2,
    16
  );

-- ACTIVITY CATALOGUE ID: 17
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    3,
    17
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    3,
    17
  );

-- ACTIVITY CATALOGUE ID: 18
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
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
    4,
    18
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
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
    4,
    18
  );

-- ACTIVITY CATALOGUE ID: 19
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    5,
    19
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    5,
    19
  );

-- ACTIVITY CATALOGUE ID: 20
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    20
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    20
  );


-- ACTIVITY CATALOGUE ID: 21
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
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
    1,
    21
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
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
    1,
    21
  );

-- ACTIVITY CATALOGUE ID: 22
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    22
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    1,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    22
  );

-- ACTIVITY CATALOGUE ID: 23
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    23
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    's',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    23
  );

-- ACTIVITY CATALOGUE ID: 24
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    24
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    24
  );

-- ACTIVITY CATALOGUE ID: 25
INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2022,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    25
  );

INSERT INTO
  ACTIVITY (ACTIVITY_ID, YEAR, NUM, TYPE, START_TIME, END_TIME, MANUAL_DATE,
            DAYS_WEEK, CTC, COST, MAX_QUOTA, MIN_QUOTA, VENUE_ID,
            ACTIVITY_CATALOGUE_ID)
VALUES
  (
    NEXTVAL('ACTIVITY_SEQ'),
    2023,
    2,
    'i',
    '13:00',
    '15:00',
    'Los días 5, 7, 9 y 10 de Agosto',
    'LIVS',
    80,
    200.00,
    15,
    5,
    1,
    25
  );