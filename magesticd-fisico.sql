--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNAM
-- Project :      magestic-en.DM1
-- Author :       mauri33445@live.com.mx
--
-- Date Created : Wednesday, May 25, 2022 20:45:25
-- Target DBMS : PostgreSQL 8.0
--

DROP TABLE "USER"
;
DROP TABLE "SEMINAR_TOPIC"
;
DROP TABLE "PROFESSOR_FACULTY"
;
DROP TABLE "PROFESSOR_DIVISION"
;
DROP TABLE "PROFESSOR_CATEGORY"
;
DROP TABLE "PROFESSOR_CAREER"
;
DROP TABLE "INSTRUCTOR_EVALUATION"
;
DROP TABLE "INSTRUCTOR"
;
DROP TABLE "FACULTY"
;
DROP TABLE "DIVISION"
;
DROP TABLE "CATEGORY"
;
DROP TABLE "CAREER"
;
DROP TABLE "ACTIVITY_EVALUATION"
;
DROP TABLE "PARTICIPANT"
;
DROP TABLE "PROFESSOR"
;
DROP TABLE "ACTIVITY"
;
DROP TABLE "ACTIVITY_CATALOGUE"
;
DROP TABLE "DIPLOMA"
;
DROP TABLE "DEPARTMENT"
;
DROP TABLE "ADMINISTRATOR"
;
DROP TABLE "VENUE"
;
-- 
-- TABLE: "VENUE" 
--

CREATE TABLE "VENUE"(
    "VENUE_ID"  numeric(40, 0)    NOT NULL,
    "NAME"      varchar(100)      NOT NULL,
    "CAPACITY"  integer           NOT NULL,
    "LOCATION"  varchar(200)      NOT NULL,
    CONSTRAINT "PK20" PRIMARY KEY ("VENUE_ID")
)
;



-- 
-- TABLE: "ADMINISTRATOR" 
--

CREATE TABLE "ADMINISTRATOR"(
    "ADMINISTRATOR_ID"   numeric(10, 0)    NOT NULL,
    "NAME"               varchar(100)      NOT NULL,
    "LAST_NAME"          varchar(40)       NOT NULL,
    "MOTHERS_LAST_NAME"  varchar(40),
    "DEGREE"             varchar(40),
    "GENDER"             char(1),
    "JOB"                char(1)           NOT NULL,
    CONSTRAINT "PK12" PRIMARY KEY ("ADMINISTRATOR_ID")
)
;



-- 
-- TABLE: "DEPARTMENT" 
--

CREATE TABLE "DEPARTMENT"(
    "DEPARTMENT_ID"     numeric(10, 0)    NOT NULL,
    "ABBREVIATION"      varchar(40)       NOT NULL,
    "NAME"              varchar(100)      NOT NULL,
    "ADMINISTRATOR_ID"  numeric(10, 0)    NOT NULL,
    CONSTRAINT "PK1" PRIMARY KEY ("DEPARTMENT_ID"), 
    CONSTRAINT "RefADMINISTRATOR25" FOREIGN KEY ("ADMINISTRATOR_ID")
    REFERENCES "ADMINISTRATOR"("ADMINISTRATOR_ID")
)
;



-- 
-- TABLE: "DIPLOMA" 
--

CREATE TABLE "DIPLOMA"(
    "DIPLOMA_ID"  numeric(40, 0)    NOT NULL,
    "NAME"        varchar(300)      NOT NULL,
    CONSTRAINT "PK31" PRIMARY KEY ("DIPLOMA_ID")
)
;



-- 
-- TABLE: "ACTIVITY_CATALOGUE" 
--

CREATE TABLE "ACTIVITY_CATALOGUE"(
    "ACTIVITY_CATALOGUE_ID"  numeric(40, 0)    NOT NULL,
    "KEY"                    varchar(30)       NOT NULL,
    "NAME"                   varchar(300)      NOT NULL,
    "HOURS"                  integer           NOT NULL,
    "TYPE"                   char(2)           NOT NULL,
    "INSTITUTION"            varchar(10),
    "AIMED_AT"               varchar(500),
    "OBJECTIVE"              varchar(500),
    "CONTENT"                varchar(2000),
    "BACKGROUND"             varchar(500),
    "CREATION_DATE"          date              NOT NULL,
    "MODULE"                 integer,
    "DEPARTMENT_ID"          numeric(10, 0)    NOT NULL,
    "DIPLOMA_ID"             numeric(40, 0),
    CONSTRAINT "PK3" PRIMARY KEY ("ACTIVITY_CATALOGUE_ID"), 
    CONSTRAINT "RefDEPARTMENT14" FOREIGN KEY ("DEPARTMENT_ID")
    REFERENCES "DEPARTMENT"("DEPARTMENT_ID"),
    CONSTRAINT "RefDIPLOMA31" FOREIGN KEY ("DIPLOMA_ID")
    REFERENCES "DIPLOMA"("DIPLOMA_ID")
)
;



-- 
-- TABLE: "ACTIVITY" 
--

CREATE TABLE "ACTIVITY"(
    "ACTIVITY_ID"            numeric(40, 0)    NOT NULL,
    "SEM_YEAR"               integer           NOT NULL,
    "SEM_NUM"                integer           NOT NULL,
    "SEM_TYPE"               char(1)           NOT NULL,
    "START_DATE"             date              NOT NULL,
    "END_DATE"               date              NOT NULL,
    "MANUAL_DATE"            varchar(200)      NOT NULL,
    "DAY"                    varchar(12)       NOT NULL,
    "CTC"                    integer,
    "COST"                   numeric(10, 2)    NOT NULL,
    "MAX_QUOTA"              integer           NOT NULL,
    "MIN_QUOTA"              integer           NOT NULL,
    "VENUE_ID"               numeric(40, 0)    NOT NULL,
    "ACTIVITY_CATALOGUE_ID"  numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK4" PRIMARY KEY ("ACTIVITY_ID"), 
    CONSTRAINT "RefVENUE15" FOREIGN KEY ("VENUE_ID")
    REFERENCES "VENUE"("VENUE_ID"),
    CONSTRAINT "RefACTIVITY_CATALOGUE33" FOREIGN KEY ("ACTIVITY_CATALOGUE_ID")
    REFERENCES "ACTIVITY_CATALOGUE"("ACTIVITY_CATALOGUE_ID")
)
;



-- 
-- TABLE: "PROFESSOR" 
--

CREATE TABLE "PROFESSOR"(
    "PROFESSOR_ID"       numeric(40, 0)    NOT NULL,
    "NAME"               varchar(100)      NOT NULL,
    "LAST_NAME"          varchar(50)       NOT NULL,
    "MOTHERS_LAST_NAME"  varchar(50),
    "RFC"                varchar(15),
    "WORKER_NUMBER"      varchar(30),
    "BIRTHDATE"          date,
    "PHONE_NUMBER"       varchar(15),
    "DEGREE"             varchar(40),
    "EMAIL"              varchar(40),
    "GENDER"             char(1),
    "SEMBLANCE"          varchar(200),
    "FACEBOOK"           varchar(40),
    "IS_INSTRUCTOR"      boolean           NOT NULL,
    "IS_UNAM"            boolean           NOT NULL,
    "PROVENANCE"         varchar(100),
    CONSTRAINT "PK2" PRIMARY KEY ("PROFESSOR_ID")
)
;



-- 
-- TABLE: "PARTICIPANT" 
--

CREATE TABLE "PARTICIPANT"(
    "PARTICIPANT_ID"  numeric(40, 0)    NOT NULL,
    "ADDITIONAL"      boolean           NOT NULL,
    "ATTENDANCE"      boolean           NOT NULL,
    "ACCREDITED"      boolean           NOT NULL,
    "CONFIRMATION"    boolean           NOT NULL,
    "CANCELED"        boolean           NOT NULL,
    "FREE"            boolean           NOT NULL,
    "DISCOUNT"        numeric(4, 4)     NOT NULL,
    "DEPOSIT"         numeric(10, 2)    NOT NULL,
    "WL_WAS"          boolean           NOT NULL,
    "WL_NUMBER"       integer,
    "NAC"             varchar(300),
    "GRADE"           integer,
    "COMMENT"         varchar(300),
    "KEY"             varchar(20),
    "SEND_DATE"       date,
    "PROFESSOR_ID"    numeric(40, 0)    NOT NULL,
    "ACTIVITY_ID"     numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK7" PRIMARY KEY ("PARTICIPANT_ID"), 
    CONSTRAINT "RefPROFESSOR16" FOREIGN KEY ("PROFESSOR_ID")
    REFERENCES "PROFESSOR"("PROFESSOR_ID"),
    CONSTRAINT "RefACTIVITY20" FOREIGN KEY ("ACTIVITY_ID")
    REFERENCES "ACTIVITY"("ACTIVITY_ID")
)
;



-- 
-- TABLE: "ACTIVITY_EVALUATION" 
--

CREATE TABLE "ACTIVITY_EVALUATION"(
    "ACTIVITY_EVALUATION_ID"  numeric(40, 0)    NOT NULL,
    "QUESTION_1_1"            integer,
    "QUESTION_1_2"            integer,
    "IQUESTION_1_3"           integer,
    "QUESTION_1_4"            integer,
    "QUESTION_1_5"            integer,
    "QUESTION_2_1"            integer,
    "QUESTION_2_2"            integer,
    "QUESTION_2_3"            integer,
    "QUESTION_2_4"            integer,
    "QUESTION_3_1"            integer,
    "QUESTION_3_2"            integer,
    "QUESTION_3_3"            integer,
    "QUESTION_3_4"            integer,
    "QUESTION_4"              boolean,
    "QUESTION_5"              varchar(20),
    "QUESTION_6"              varchar(500),
    "QUESTION_7"              varchar(500),
    "QUESTION_8"              varchar(400),
    "QUESTION_9"              varchar(20),
    "QUESTION_10"             varchar(300),
    "SEM_SCHEDULE"            varchar(500),
    "INT_SCHEDULE"            varchar(500),
    "PARTICIPANT_ID"          numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK21" PRIMARY KEY ("ACTIVITY_EVALUATION_ID"), 
    CONSTRAINT "RefPARTICIPANT26" FOREIGN KEY ("PARTICIPANT_ID")
    REFERENCES "PARTICIPANT"("PARTICIPANT_ID")
)
;



-- 
-- TABLE: "CAREER" 
--

CREATE TABLE "CAREER"(
    "CAREER_ID"  numeric(10, 0)    NOT NULL,
    "NAME"       varchar(100)      NOT NULL,
    "KEY"        varchar(30)       NOT NULL,
    CONSTRAINT "PK18" PRIMARY KEY ("CAREER_ID")
)
;



-- 
-- TABLE: "CATEGORY" 
--

CREATE TABLE "CATEGORY"(
    "CATEGORY_ID"   numeric(10, 0)    NOT NULL,
    "NAME"          varchar(50)       NOT NULL,
    "ABBREVIATION"  varchar(20)       NOT NULL,
    CONSTRAINT "PK5" PRIMARY KEY ("CATEGORY_ID")
)
;



-- 
-- TABLE: "DIVISION" 
--

CREATE TABLE "DIVISION"(
    "DIVISION_ID"   numeric(10, 0)    NOT NULL,
    "NAME"          varchar(60)       NOT NULL,
    "ABBREVIATION"  varchar(30)       NOT NULL,
    CONSTRAINT "PK16" PRIMARY KEY ("DIVISION_ID")
)
;



-- 
-- TABLE: "FACULTY" 
--

CREATE TABLE "FACULTY"(
    "FACULTY_ID"  numeric(10, 0)    NOT NULL,
    "NAME"        varchar(50)       NOT NULL,
    CONSTRAINT "PK15" PRIMARY KEY ("FACULTY_ID")
)
;



-- 
-- TABLE: "INSTRUCTOR" 
--

CREATE TABLE "INSTRUCTOR"(
    "INSTRUCTOR_ID"  numeric(40, 0)    NOT NULL,
    "KEY"            varchar(10),
    "SEND_DATE"      date,
    "PROFESSOR_ID"   numeric(40, 0)    NOT NULL,
    "ACTIVITY_ID"    numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK6" PRIMARY KEY ("INSTRUCTOR_ID"), 
    CONSTRAINT "RefPROFESSOR17" FOREIGN KEY ("PROFESSOR_ID")
    REFERENCES "PROFESSOR"("PROFESSOR_ID"),
    CONSTRAINT "RefACTIVITY19" FOREIGN KEY ("ACTIVITY_ID")
    REFERENCES "ACTIVITY"("ACTIVITY_ID")
)
;



-- 
-- TABLE: "INSTRUCTOR_EVALUATION" 
--

CREATE TABLE "INSTRUCTOR_EVALUATION"(
    "INSTRUCTOR_EVALUATION_ID"  numeric(40, 0)    NOT NULL,
    "QUESTION_1"                integer,
    "QUESTION_2"                integer,
    "QUESTION_3"                integer,
    "QUESTION_4"                integer,
    "QUESTION_5"                integer,
    "QUESTION_6"                integer,
    "QUESTION_7"                integer,
    "QUESTION_8"                integer,
    "QUESTION_9"                integer,
    "QUESTION_10"               integer,
    "QUESTION_11"               integer,
    "INSTRUCTOR_ID"             numeric(40, 0)    NOT NULL,
    "PARTICIPANT_ID"            numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK22" PRIMARY KEY ("INSTRUCTOR_EVALUATION_ID"), 
    CONSTRAINT "RefINSTRUCTOR28" FOREIGN KEY ("INSTRUCTOR_ID")
    REFERENCES "INSTRUCTOR"("INSTRUCTOR_ID"),
    CONSTRAINT "RefPARTICIPANT29" FOREIGN KEY ("PARTICIPANT_ID")
    REFERENCES "PARTICIPANT"("PARTICIPANT_ID")
)
;



-- 
-- TABLE: "PROFESSOR_CAREER" 
--

CREATE TABLE "PROFESSOR_CAREER"(
    "PROFESSOR_CAREER_ID"  numeric(40, 0)    NOT NULL,
    "CAREER_ID"            numeric(10, 0)    NOT NULL,
    "PROFESSOR_ID"         numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK19" PRIMARY KEY ("PROFESSOR_CAREER_ID"), 
    CONSTRAINT "RefCAREER11" FOREIGN KEY ("CAREER_ID")
    REFERENCES "CAREER"("CAREER_ID"),
    CONSTRAINT "RefPROFESSOR12" FOREIGN KEY ("PROFESSOR_ID")
    REFERENCES "PROFESSOR"("PROFESSOR_ID")
)
;



-- 
-- TABLE: "PROFESSOR_CATEGORY" 
--

CREATE TABLE "PROFESSOR_CATEGORY"(
    "PROFESSOR_CATEGORY_ID"  numeric(40, 0)    NOT NULL,
    "NUMBER"                 integer           NOT NULL,
    "PROFESSOR_ID"           numeric(40, 0)    NOT NULL,
    "CATEGORY_ID"            numeric(10, 0)    NOT NULL,
    CONSTRAINT "PK14" PRIMARY KEY ("PROFESSOR_CATEGORY_ID"), 
    CONSTRAINT "RefCATEGORY1" FOREIGN KEY ("CATEGORY_ID")
    REFERENCES "CATEGORY"("CATEGORY_ID"),
    CONSTRAINT "RefPROFESSOR2" FOREIGN KEY ("PROFESSOR_ID")
    REFERENCES "PROFESSOR"("PROFESSOR_ID")
)
;



-- 
-- TABLE: "PROFESSOR_DIVISION" 
--

CREATE TABLE "PROFESSOR_DIVISION"(
    "PROFESSOR_DIVISION_ID"  numeric(40, 0)    NOT NULL,
    "DIVISION_ID"            numeric(10, 0)    NOT NULL,
    "PROFESSOR_ID"           numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK17" PRIMARY KEY ("PROFESSOR_DIVISION_ID"), 
    CONSTRAINT "RefDIVISION7" FOREIGN KEY ("DIVISION_ID")
    REFERENCES "DIVISION"("DIVISION_ID"),
    CONSTRAINT "RefPROFESSOR9" FOREIGN KEY ("PROFESSOR_ID")
    REFERENCES "PROFESSOR"("PROFESSOR_ID")
)
;



-- 
-- TABLE: "PROFESSOR_FACULTY" 
--

CREATE TABLE "PROFESSOR_FACULTY"(
    "PROFESSOR_FACULTY_ID"  varchar(40)       NOT NULL,
    "PROFESSOR_ID"          numeric(40, 0)    NOT NULL,
    "FACULTY_ID"            numeric(10, 0)    NOT NULL,
    CONSTRAINT "PK32" PRIMARY KEY ("PROFESSOR_FACULTY_ID"), 
    CONSTRAINT "RefPROFESSOR44" FOREIGN KEY ("PROFESSOR_ID")
    REFERENCES "PROFESSOR"("PROFESSOR_ID"),
    CONSTRAINT "RefFACULTY45" FOREIGN KEY ("FACULTY_ID")
    REFERENCES "FACULTY"("FACULTY_ID")
)
;



-- 
-- TABLE: "SEMINAR_TOPIC" 
--

CREATE TABLE "SEMINAR_TOPIC"(
    "SEMINAR_TOPIC_ID"  varchar(40)       NOT NULL,
    "NAME"              varchar(300)      NOT NULL,
    "HOURS"             integer           NOT NULL,
    "EX_DATE"           date              NOT NULL,
    "INSTRUCTOR_ID"     numeric(40, 0)    NOT NULL,
    "ACTIVITY_ID"       numeric(40, 0)    NOT NULL,
    CONSTRAINT "PK9" PRIMARY KEY ("SEMINAR_TOPIC_ID"), 
    CONSTRAINT "RefINSTRUCTOR38" FOREIGN KEY ("INSTRUCTOR_ID")
    REFERENCES "INSTRUCTOR"("INSTRUCTOR_ID"),
    CONSTRAINT "RefACTIVITY39" FOREIGN KEY ("ACTIVITY_ID")
    REFERENCES "ACTIVITY"("ACTIVITY_ID")
)
;



-- 
-- TABLE: "USER" 
--

CREATE TABLE "USER"(
    "USER_ID"        numeric(40, 0)    NOT NULL,
    "NAME"           varchar(50)       NOT NULL,
    "USERNAME"       varchar(40)       NOT NULL,
    "PASSWORD"       varchar(40)       NOT NULL,
    "ADMIN"          boolean           NOT NULL,
    "DEPARTMENT_ID"  numeric(10, 0),
    CONSTRAINT "PK23" PRIMARY KEY ("USER_ID"), 
    CONSTRAINT "RefDEPARTMENT40" FOREIGN KEY ("DEPARTMENT_ID")
    REFERENCES "DEPARTMENT"("DEPARTMENT_ID")
)
;



