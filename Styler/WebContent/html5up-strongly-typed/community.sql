DROP TABLE COMMUNITYS;


CREATE TABLE COMMUNITY (
COMM_NUM NUMBER,
TITLE VARCHAR2(100) NOT NULL,
CONTENT VARCHAR2(2048) NOT NULL,
ID VARCHAR2(100) FOREIGN KEY REFERENCES MEMBER(ID),
HITS VARCHAR2(2048),
RECOM VARCHAR2(2048),
COM_DATE DATE
); 

CREATE TABLE COMMUNITYS (
COMM_NUM NUMBER,
TITLE VARCHAR2(100) NOT NULL,
CONTENT VARCHAR2(2048) NOT NULL,
COM_DATE DATE,
);

CREATE SEQUENCE COMM_NUM START WITH 1 INCREMENT BY 1;

INSERT INTO COMMUNITYS VALUES (MSG_NUM.NEXTVAL, 'sdf', 'ewe', SYSDATE)


SELECT * FROM COMMUNITYS;