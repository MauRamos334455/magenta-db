--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNAM
-- Project :      magenta
-- Author :       C. Mauricio Ramos V.,
--                Carolina Kennedy V.
--
-- Date Created : Monday, May 23, 2022 16:10:58
-- Target DBMS : Postgres 14
--
-- Description : Tables definition and structure (DDL)
-- 

\qecho ================== DROPPING OLD TABLES ==================

DROP TABLE ACTIVITY CASCADE
;
DROP TABLE ACTIVITY_CATALOGUE CASCADE
;
DROP TABLE ACTIVITY_EVALUATION CASCADE
;
DROP TABLE ADMINISTRATOR CASCADE
;
DROP TABLE WORK_POSITION CASCADE
;
DROP TABLE DEPARTMENT CASCADE
;
DROP TABLE DIPLOMA CASCADE
;
DROP TABLE DIVISION CASCADE
;
DROP TABLE INSTRUCTOR CASCADE
;
DROP TABLE INSTRUCTOR_EVALUATION CASCADE
;
DROP TABLE PARTICIPANT CASCADE
;
DROP TABLE PROFESSOR CASCADE
;
DROP TABLE PROFESSOR_POSITION CASCADE
;
DROP TABLE PROFESSOR_DIVISION CASCADE
;
DROP TABLE SEMINAR_TOPIC CASCADE
;
DROP TABLE VENUE CASCADE
;

\qecho ================== CREATING TABLES ==================

-- 
-- TABLE: ACTIVITY 
--

CREATE TABLE ACTIVITY(
    ACTIVITY_ID              NUMERIC(40, 0)   NOT NULL,
    YEAR                     INTEGER          NOT NULL,
    NUM                      INTEGER          NOT NULL,
    TYPE                     CHAR(1)          NOT NULL,
    START_TIME               TIME             NOT NULL,
    END_TIME                 TIME             NOT NULL,
    MANUAL_DATE              VARCHAR(200)     NOT NULL,
    CERTIFICATE_DATE         DATE,
    RECOGNITION_DATE         DATE,
    DAYS_WEEK                VARCHAR(9)       NOT NULL,
    CTC                      INTEGER,
    COST                     NUMERIC(10, 2)   NOT NULL,
    MAX_QUOTA                INTEGER          NOT NULL,
    MIN_QUOTA                INTEGER          NOT NULL,
    VENUE_ID                 NUMERIC(40, 0),
    ACTIVITY_CATALOGUE_ID    NUMERIC(40, 0)   NOT NULL,
    CONSTRAINT ACTIVITY_PK PRIMARY KEY (ACTIVITY_ID),
    CONSTRAINT ACTIVITY_NUM_CHK CHECK ( NUM = 1 OR NUM = 2),
    CONSTRAINT ACTIVITY_TYPE_CHK CHECK ( TYPE = 'i' OR TYPE = 's'),
    CONSTRAINT ACTIVITY_DAY_CHK CHECK (DAYS_WEEK ~ '^L?M?I?J?V?S?D?$'),
    CONSTRAINT ACTIVITY_MAX_QUOTA_CHK CHECK (MAX_QUOTA > 0),
    CONSTRAINT ACTIVITY_MIN_QUOTA_CHK CHECK (MIN_QUOTA > 0)
)
;



-- 
-- TABLE: ACTIVITY_CATALOGUE 
--

CREATE TABLE ACTIVITY_CATALOGUE(
    ACTIVITY_CATALOGUE_ID    NUMERIC(40, 0)   NOT NULL,
    KEY                      VARCHAR(30)      NOT NULL,
    NAME                     VARCHAR(300)     NOT NULL,
    HOURS                    INTEGER          NOT NULL,
    TYPE                     CHAR(2)          NOT NULL,
    AIMED_AT                 VARCHAR(500),
    OBJECTIVE                VARCHAR(500),
    CONTENT                  VARCHAR(2000),
    BACKGROUND               VARCHAR(500),
    CREATION_DATE            DATE             NOT NULL,
    MODULE                   INTEGER,
    DEPARTMENT_ID            NUMERIC(10, 0)   NOT NULL,
    DIPLOMA_ID               NUMERIC(40, 0),
    CONSTRAINT ACTIVITY_CATALOGUE_PK PRIMARY KEY (ACTIVITY_CATALOGUE_ID),
    CONSTRAINT ACTIVITY_CATALOGUE_KEY UNIQUE (KEY),
    CONSTRAINT ACTIVITY_CATALOGUE_TYPE_CHK CHECK (
      TYPE IN ('CU','CT','TA','SE','FO','EV','DI','CO'))
)
;



-- 
-- TABLE: ACTIVITY_EVALUATION 
--

CREATE TABLE ACTIVITY_EVALUATION(
    ACTIVITY_EVALUATION_ID    NUMERIC(40, 0)    NOT NULL,
    QUESTION_1_1              INTEGER           NOT NULL,
    QUESTION_1_2              INTEGER           NOT NULL,
    QUESTION_1_3              INTEGER           NOT NULL,
    QUESTION_1_4              INTEGER           NOT NULL,
    QUESTION_1_5              INTEGER           NOT NULL,
    QUESTION_2_1              INTEGER           NOT NULL,
    QUESTION_2_2              INTEGER           NOT NULL,
    QUESTION_2_3              INTEGER           NOT NULL,
    QUESTION_2_4              INTEGER           NOT NULL,
    QUESTION_3_1              INTEGER           NOT NULL,
    QUESTION_3_2              INTEGER           NOT NULL,
    QUESTION_3_3              INTEGER           NOT NULL,
    QUESTION_3_4              INTEGER           NOT NULL,
    QUESTION_4                BOOLEAN           NOT NULL,
    QUESTION_5                VARCHAR(20)       NOT NULL,
    QUESTION_6_1              VARCHAR(500),
    QUESTION_6_2              VARCHAR(500),
    QUESTION_6_3              VARCHAR(400),
    QUESTION_7_1              VARCHAR(20)       NOT NULL,
    QUESTION_7_2              VARCHAR(300),
    QUESTION_8_1              VARCHAR(500),
    QUESTION_8_2              VARCHAR(500),
    PARTICIPANT_ID            NUMERIC(40, 0)    NOT NULL,
    CONSTRAINT ACTIVITY_EVALUATION_PK PRIMARY KEY (ACTIVITY_EVALUATION_ID),
    CONSTRAINT AE_QUESTION_1_1_CHK CHECK (QUESTION_1_1 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_1_2_CHK CHECK (QUESTION_1_2 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_1_3_CHK CHECK (QUESTION_1_3 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_1_4_CHK CHECK (QUESTION_1_4 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_1_5_CHK CHECK (QUESTION_1_5 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_2_1_CHK CHECK (QUESTION_2_1 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_2_2_CHK CHECK (QUESTION_2_2 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_2_3_CHK CHECK (QUESTION_2_3 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_2_4_CHK CHECK (QUESTION_2_4 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_3_1_CHK CHECK (QUESTION_3_1 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_3_2_CHK CHECK (QUESTION_3_2 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_3_3_CHK CHECK (QUESTION_3_3 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_3_4_CHK CHECK (QUESTION_3_4 IN (50,60,80,95,100)),
    CONSTRAINT AE_QUESTION_5_CHK CHECK (QUESTION_5 ~ '^I?P?J?O?$'),
    CONSTRAINT AE_QUESTION_7_1_CHK CHECK (QUESTION_7_1 ~ '^P?H?C?O?$')
)
;



-- 
-- TABLE: WORK_POSITION 
--

CREATE TABLE WORK_POSITION(
    WORK_POSITION_ID  NUMERIC(10, 0)  NOT NULL,
    NAME              VARCHAR(50)     NOT NULL,
    ABBREVIATION      VARCHAR(20)     NOT NULL,
    CONSTRAINT WORK_POSITION_PK PRIMARY KEY (WORK_POSITION_ID)
)
;



-- 
-- TABLE: DEPARTMENT 
--

CREATE TABLE DEPARTMENT(
    DEPARTMENT_ID       NUMERIC(10, 0)  NOT NULL,
    ABBREVIATION        VARCHAR(40)     NOT NULL,
    NAME                VARCHAR(100)    NOT NULL,
    CONSTRAINT DEPARTMENT_PK PRIMARY KEY (DEPARTMENT_ID)
)
;



-- 
-- TABLE: DIPLOMA 
--

CREATE TABLE DIPLOMA(
    DIPLOMA_ID    NUMERIC(40, 0)  NOT NULL,
    NAME          VARCHAR(300)    NOT NULL,
    CONSTRAINT DIPLOMA_PK PRIMARY KEY (DIPLOMA_ID)
)
;



-- 
-- TABLE: DIVISION 
--

CREATE TABLE DIVISION(
    DIVISION_ID     NUMERIC(10, 0)  NOT NULL,
    NAME            VARCHAR(60)     NOT NULL,
    ABBREVIATION    VARCHAR(30)     NOT NULL,
    CONSTRAINT DIVISION_PK PRIMARY KEY (DIVISION_ID)
)
;


-- 
-- TABLE: INSTRUCTOR 
--

CREATE TABLE INSTRUCTOR(
    INSTRUCTOR_ID    NUMERIC(40, 0)    NOT NULL,
    KEY              VARCHAR(16),
    PROFESSOR_ID     NUMERIC(40, 0)    NOT NULL,
    ACTIVITY_ID      NUMERIC(40, 0)    NOT NULL,
    CONSTRAINT INSTRUCTOR_PK PRIMARY KEY (INSTRUCTOR_ID),
    CONSTRAINT INSTRUCTOR_KEY_UK UNIQUE (KEY),
    CONSTRAINT INSTRUCTOR_UK UNIQUE (PROFESSOR_ID, ACTIVITY_ID)
)
;



-- 
-- TABLE: INSTRUCTOR_EVALUATION 
--

CREATE TABLE INSTRUCTOR_EVALUATION(
    INSTRUCTOR_EVALUATION_ID    NUMERIC(40, 0)    NOT NULL,
    QUESTION_1                  INTEGER           NOT NULL,
    QUESTION_2                  INTEGER           NOT NULL,
    QUESTION_3                  INTEGER           NOT NULL,
    QUESTION_4                  INTEGER           NOT NULL,
    QUESTION_5                  INTEGER           NOT NULL,
    QUESTION_6                  INTEGER           NOT NULL,
    QUESTION_7                  INTEGER           NOT NULL,
    QUESTION_8                  INTEGER           NOT NULL,
    INSTRUCTOR_ID               NUMERIC(40, 0)    NOT NULL,
    PARTICIPANT_ID              NUMERIC(40, 0)    NOT NULL,
    CONSTRAINT INSTRUCTOR_EVALUATION_PK PRIMARY KEY (INSTRUCTOR_EVALUATION_ID),
    CONSTRAINT IE_QUESTION_1_CHK  CHECK (QUESTION_1 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_2_CHK  CHECK (QUESTION_2 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_3_CHK  CHECK (QUESTION_3 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_4_CHK  CHECK (QUESTION_4 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_5_CHK  CHECK (QUESTION_5 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_6_CHK  CHECK (QUESTION_6 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_7_CHK  CHECK (QUESTION_7 IN (50,60,80,95,100)),
    CONSTRAINT IE_QUESTION_8_CHK  CHECK (QUESTION_8 IN (50,60,80,95,100))
)
;



-- 
-- TABLE: PARTICIPANT 
--

CREATE TABLE PARTICIPANT(
    PARTICIPANT_ID    NUMERIC(40, 0)   NOT NULL,
    ADDITIONAL        BOOLEAN,
    ATTENDANCE        BOOLEAN,
    ACCREDITED        BOOLEAN,
    CONFIRMATION      BOOLEAN,
    CANCELED          BOOLEAN,
    DISCOUNT          NUMERIC(5, 2),
    DEPOSIT           NUMERIC(10, 2),
    MISTIMED          BOOLEAN,
    NAC               VARCHAR(300),
    GRADE             INTEGER,
    COMMENT           VARCHAR(300),
    KEY               VARCHAR(16),
    PROFESSOR_ID      NUMERIC(40, 0)   NOT NULL,
    ACTIVITY_ID       NUMERIC(40, 0)   NOT NULL,
    CONSTRAINT PARTICIPANT_PK PRIMARY KEY (PARTICIPANT_ID),
    CONSTRAINT PARTICIPANT_UK UNIQUE (PROFESSOR_ID, ACTIVITY_ID),
    CONSTRAINT PARTICIPANT_DISCOUNT_CHK CHECK ( DISCOUNT >= 0 AND DISCOUNT <= 100),
    CONSTRAINT PARTICIPANT_ACCREDITED_CHK CHECK ( NOT (ACCREDITED = TRUE AND NAC IS NOT NULL) ),
    CONSTRAINT PARTICIPANT_CANCELED_CHK CHECK ( 
      (CANCELED = TRUE AND (ACCREDITED IS NULL OR ACCREDITED = FALSE) AND
      GRADE IS NULL AND NAC IS NULL) OR (CANCELED = FALSE OR CANCELED IS NULL)
    )
)
;



-- 
-- TABLE: PROFESSOR 
--

CREATE TABLE PROFESSOR(
    PROFESSOR_ID         NUMERIC(40, 0)  NOT NULL,
    NAME                 VARCHAR(100)    NOT NULL,
    LAST_NAME            VARCHAR(50)     NOT NULL,
    MOTHERS_LAST_NAME    VARCHAR(50),
    RFC                  VARCHAR(15),
    WORKER_NUMBER        VARCHAR(30),
    BIRTHDATE            DATE,
    PHONE_NUMBER         VARCHAR(15),
    DEGREE               VARCHAR(40),
    EMAIL                VARCHAR(40),
    GENDER               CHAR(1),
    SEMBLANCE            VARCHAR(200),
    IS_INSTRUCTOR        BOOLEAN         NOT NULL,
    PROVENANCE           VARCHAR(100),
    CONSTRAINT PROFESSOR_PK PRIMARY KEY (PROFESSOR_ID),
    CONSTRAINT PROFESSOR_RFC_CHK CHECK (LENGTH(RFC) = 13 OR LENGTH(RFC) = 10),
    CONSTRAINT PROFESSOR_GENDER_CHK CHECK (GENDER = 'M' OR GENDER = 'F'),
    CONSTRAINT PROFESSOR_RFC_UK UNIQUE (RFC),
    CONSTRAINT PROFESSOR_WORKER_NUMBER_UK UNIQUE (WORKER_NUMBER)
)
;



-- 
-- TABLE: PROFESSOR_POSITION 
--

CREATE TABLE PROFESSOR_POSITION(
    PROFESSOR_POSITION_ID    NUMERIC(40, 0)    NOT NULL,
    PROFESSOR_ID             NUMERIC(40, 0)    NOT NULL,
    WORK_POSITION_ID         NUMERIC(10, 0)    NOT NULL,
    CONSTRAINT PROFESSOR_POSITION_PK PRIMARY KEY (PROFESSOR_POSITION_ID),
    CONSTRAINT PROFESSOR_POSITION_UQ UNIQUE (PROFESSOR_ID, WORK_POSITION_ID)

)
;



-- 
-- TABLE: PROFESSOR_DIVISION 
--

CREATE TABLE PROFESSOR_DIVISION(
    PROFESSOR_DIVISION_ID    NUMERIC(40, 0)    NOT NULL,
    DIVISION_ID              NUMERIC(10, 0)    NOT NULL,
    PROFESSOR_ID             NUMERIC(40, 0)    NOT NULL,
    CONSTRAINT PROFESSOR_DIVISION_PK PRIMARY KEY (PROFESSOR_DIVISION_ID),
    CONSTRAINT PROFESSOR_DIVISION_UQ UNIQUE (DIVISION_ID, PROFESSOR_ID)
)
;



-- 
-- TABLE: SEMINAR_TOPIC 
--

CREATE TABLE SEMINAR_TOPIC(
    SEMINAR_TOPIC_ID    NUMERIC(40, 0)  NOT NULL,
    NAME                VARCHAR(300)    NOT NULL,
    HOURS               INTEGER         NOT NULL,
    EX_DATE             DATE            NOT NULL,
    INSTRUCTOR_ID       NUMERIC(40, 0)  NOT NULL,
    ACTIVITY_ID         NUMERIC(40, 0)  NOT NULL,
    CONSTRAINT SEMINAR_TOPIC_PK PRIMARY KEY (SEMINAR_TOPIC_ID)
)
;



-- 
-- TABLE: ADMINISTRATOR
--

CREATE TABLE ADMINISTRATOR(
    ADMINISTRATOR_ID     NUMERIC(40, 0)  NOT NULL,
    NAME                 VARCHAR(100)    NOT NULL,
    LAST_NAME            VARCHAR(40)     NOT NULL,
    MOTHERS_LAST_NAME    VARCHAR(40),
    DEGREE               VARCHAR(40),
    GENDER               CHAR(1),
    USERNAME             VARCHAR(40)     NOT NULL,
    PASSWORD             VARCHAR(60)     NOT NULL,
    ROLE                  CHAR(1)        NOT NULL,
    DEPARTMENT_ID        NUMERIC(10, 0)  NOT NULL,

    CONSTRAINT ADMINISTRATOR_PK PRIMARY KEY (ADMINISTRATOR_ID),
    CONSTRAINT ADMINISTRATOR_GENDER_CHK CHECK (GENDER = 'M' OR GENDER = 'F'),
    CONSTRAINT ADMINISTRATOR_USERNAME_UK UNIQUE (USERNAME),
    CONSTRAINT ADMINISTRATOR_PRIVILEGES_CHK CHECK(ROLE = 'J' OR ROLE = 'A')
)
;

-- 
-- TABLE: VENUE 
--

CREATE TABLE VENUE(
    VENUE_ID    NUMERIC(40, 0)  NOT NULL,
    NAME        VARCHAR(100)    NOT NULL,
    CAPACITY    INTEGER         NOT NULL,
    LOCATION    VARCHAR(200)    NOT NULL,
    CONSTRAINT VENUE_PK PRIMARY KEY (VENUE_ID),
    CONSTRAINT VENUE_CAPACITY_CHK CHECK (CAPACITY > 0)
)
;

\qecho ================== ADDING FOREIGN KEYS ==================

-- 
-- TABLE: ACTIVITY 
--

ALTER TABLE ACTIVITY ADD CONSTRAINT ACTIVITY_VENUE_ID_FK
    FOREIGN KEY (VENUE_ID)
    REFERENCES VENUE(VENUE_ID)
    ON DELETE CASCADE
;

ALTER TABLE ACTIVITY ADD CONSTRAINT ACTIVITY_ACTIVITY_CATALOGUE_ID_FK
    FOREIGN KEY (ACTIVITY_CATALOGUE_ID)
    REFERENCES ACTIVITY_CATALOGUE(ACTIVITY_CATALOGUE_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: ACTIVITY_CATALOGUE 
--

ALTER TABLE ACTIVITY_CATALOGUE ADD CONSTRAINT ACTIVITY_CATALOGUE_DEPARTMENT_ID_FK
    FOREIGN KEY (DEPARTMENT_ID)
    REFERENCES DEPARTMENT(DEPARTMENT_ID)
    ON DELETE CASCADE
;

ALTER TABLE ACTIVITY_CATALOGUE ADD CONSTRAINT ACTIVITY_CATALOGUE_DIPLOMA_ID_FK
    FOREIGN KEY (DIPLOMA_ID)
    REFERENCES DIPLOMA(DIPLOMA_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: ACTIVITY_EVALUATION 
--

ALTER TABLE ACTIVITY_EVALUATION ADD CONSTRAINT ACTIVITY_EVALUATION_PARTICIPANT_ID_FK
    FOREIGN KEY (PARTICIPANT_ID)
    REFERENCES PARTICIPANT(PARTICIPANT_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: INSTRUCTOR 
--

ALTER TABLE INSTRUCTOR ADD CONSTRAINT INSTRUCTOR_PROFESSOR_ID_FK
    FOREIGN KEY (PROFESSOR_ID)
    REFERENCES PROFESSOR(PROFESSOR_ID)
    ON DELETE CASCADE
;

ALTER TABLE INSTRUCTOR ADD CONSTRAINT INSTRUCTOR_ACTIVITY_ID_FK 
    FOREIGN KEY (ACTIVITY_ID)
    REFERENCES ACTIVITY(ACTIVITY_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: INSTRUCTOR_EVALUATION 
--

ALTER TABLE INSTRUCTOR_EVALUATION ADD CONSTRAINT INSTRUCTOR_EVALUATION_INSTRUCTOR_ID_FK
    FOREIGN KEY (INSTRUCTOR_ID)
    REFERENCES INSTRUCTOR(INSTRUCTOR_ID)
    ON DELETE CASCADE
;

ALTER TABLE INSTRUCTOR_EVALUATION ADD CONSTRAINT INSTRUCTOR_EVALUATION_PARTICIPANT_ID_FK
    FOREIGN KEY (PARTICIPANT_ID)
    REFERENCES PARTICIPANT(PARTICIPANT_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: PARTICIPANT 
--

ALTER TABLE PARTICIPANT ADD CONSTRAINT PARTICIPANT_PROFESSOR_ID_FK
    FOREIGN KEY (PROFESSOR_ID)
    REFERENCES PROFESSOR(PROFESSOR_ID)
    ON DELETE CASCADE
;

ALTER TABLE PARTICIPANT ADD CONSTRAINT PARTICIPANT_ACTIVITY_ID_FK
    FOREIGN KEY (ACTIVITY_ID)
    REFERENCES ACTIVITY(ACTIVITY_ID)
    ON DELETE CASCADE
;

-- 
-- TABLE: PROFESSOR_POSITION 
--

ALTER TABLE PROFESSOR_POSITION ADD CONSTRAINT PROFESSOR_POSITION_POSITION_ID_FK
    FOREIGN KEY (WORK_POSITION_ID)
    REFERENCES WORK_POSITION(WORK_POSITION_ID)
    ON DELETE CASCADE
;

ALTER TABLE PROFESSOR_POSITION ADD CONSTRAINT PROFESSOR_POSITION_PROFESSOR_ID_FK
    FOREIGN KEY (PROFESSOR_ID)
    REFERENCES PROFESSOR(PROFESSOR_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: PROFESSOR_DIVISION 
--

ALTER TABLE PROFESSOR_DIVISION ADD CONSTRAINT PROFESSOR_DIVISION_DIVISION_ID_FK
    FOREIGN KEY (DIVISION_ID)
    REFERENCES DIVISION(DIVISION_ID)
    ON DELETE CASCADE
;

ALTER TABLE PROFESSOR_DIVISION ADD CONSTRAINT PROFESSOR_DIVISION_PROFESSOR_ID_FK 
    FOREIGN KEY (PROFESSOR_ID)
    REFERENCES PROFESSOR(PROFESSOR_ID)
    ON DELETE CASCADE
;

-- 
-- TABLE: SEMINAR_TOPIC 
--

ALTER TABLE SEMINAR_TOPIC ADD CONSTRAINT SEMINAR_TOPIC_INSTRUCTOR_ID_FK 
    FOREIGN KEY (INSTRUCTOR_ID)
    REFERENCES INSTRUCTOR(INSTRUCTOR_ID)
    ON DELETE CASCADE
;

ALTER TABLE SEMINAR_TOPIC ADD CONSTRAINT SEMINAR_TOPIC_ACTIVITY_ID_FK
    FOREIGN KEY (ACTIVITY_ID)
    REFERENCES ACTIVITY(ACTIVITY_ID)
    ON DELETE CASCADE
;


-- 
-- TABLE: ACCOUNT 
--

ALTER TABLE ADMINISTRATOR ADD CONSTRAINT ADMINISTRATOR_DEPARTMENT_ID_FK
    FOREIGN KEY (DEPARTMENT_ID)
    REFERENCES DEPARTMENT(DEPARTMENT_ID)
    ON DELETE CASCADE
;