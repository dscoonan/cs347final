-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-04-29 11:16:50 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE div
  (
    div_id     INTEGER NOT NULL ,
    div_name   VARCHAR2 (4) NOT NULL ,
    lab_lab_id INTEGER NOT NULL
  ) ;
ALTER TABLE div ADD CONSTRAINT div_PK PRIMARY KEY ( div_id ) ;

CREATE TABLE doc
  (
    doc_id        INTEGER NOT NULL ,
    filename      VARCHAR2 (4000 BYTE) ,
    file_mimetype VARCHAR2 (512) ,
    file_charset  VARCHAR2 (512) ,
    file_data BLOB ,
    file_comments VARCHAR2 (4000) ,
    list_list_id  INTEGER NOT NULL
  ) ;
ALTER TABLE doc ADD CONSTRAINT doc_PK PRIMARY KEY ( doc_id ) ;

CREATE TABLE emp
  (
    eid             INTEGER NOT NULL ,
    ename           VARCHAR2 (255) NOT NULL ,
    status          CHAR (1) NOT NULL ,
    status_eff_date DATE NOT NULL ,
    is_user         CHAR (1) NOT NULL ,
    is_admin        CHAR (1) NOT NULL ,
    div_div_id      INTEGER NOT NULL
  ) ;
ALTER TABLE emp ADD CONSTRAINT emp_PK PRIMARY KEY ( eid ) ;

CREATE TABLE emp_sub
  (
    emp_sub_id   INTEGER NOT NULL ,
    list_list_id INTEGER NOT NULL ,
    emp_eid      INTEGER NOT NULL
  ) ;
ALTER TABLE emp_sub ADD CONSTRAINT emp_sub_PK PRIMARY KEY ( emp_sub_id ) ;

CREATE TABLE lab
  (
    lab_id   INTEGER NOT NULL ,
    lab_name VARCHAR2 (4) NOT NULL
  ) ;
ALTER TABLE lab ADD CONSTRAINT lab_PK PRIMARY KEY ( lab_id ) ;

CREATE TABLE list
  (
    list_id          INTEGER NOT NULL ,
    list_name        VARCHAR2 (255) NOT NULL ,
    list_description VARCHAR2 (4000) NOT NULL ,
    ext_name         VARCHAR2 (50) NOT NULL ,
    list_status      CHAR (1) NOT NULL ,
    status_eff_date  DATE NOT NULL ,
    div_div_id       INTEGER NOT NULL
  ) ;
ALTER TABLE list ADD CONSTRAINT list_PK PRIMARY KEY ( list_id ) ;

CREATE TABLE list_sub
  (
    list_sub_id   INTEGER NOT NULL ,
    list_list_id  INTEGER NOT NULL ,
    list_list_id1 INTEGER NOT NULL
  ) ;
ALTER TABLE list_sub ADD CONSTRAINT list_sub_PK PRIMARY KEY ( list_sub_id ) ;

ALTER TABLE div ADD CONSTRAINT div_lab_FK FOREIGN KEY ( lab_lab_id ) REFERENCES lab ( lab_id ) ;

ALTER TABLE doc ADD CONSTRAINT doc_list_FK FOREIGN KEY ( list_list_id ) REFERENCES list ( list_id ) ;

ALTER TABLE emp ADD CONSTRAINT emp_div_FK FOREIGN KEY ( div_div_id ) REFERENCES div ( div_id ) ;

ALTER TABLE emp_sub ADD CONSTRAINT emp_sub_emp_FK FOREIGN KEY ( emp_eid ) REFERENCES emp ( eid ) ;

ALTER TABLE emp_sub ADD CONSTRAINT emp_sub_list_FK FOREIGN KEY ( list_list_id ) REFERENCES list ( list_id ) ;

ALTER TABLE list ADD CONSTRAINT list_div_FK FOREIGN KEY ( div_div_id ) REFERENCES div ( div_id ) ;

ALTER TABLE list_sub ADD CONSTRAINT list_sub_list_FK FOREIGN KEY ( list_list_id ) REFERENCES list ( list_id ) ;

ALTER TABLE list_sub ADD CONSTRAINT list_sub_list_FKv1 FOREIGN KEY ( list_list_id1 ) REFERENCES list ( list_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0