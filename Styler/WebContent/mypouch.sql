DROP TABLE MYPOUCH;

CREATE TABLE MYPOUCH(
	ID VARCHAR2(100),
	PCH_NAME VARCHAR2(100),
	PRICE VARCHAR2(100),
	BRAND VARCHAR2(100),
	COLOR VARCHAR2(100),
	PERFO VARCHAR2(100),
	PTYPE VARCHAR2(100),
	PERR VARCHAR2(100),
	PART VARCHAR2(100),
	PARTTYPE VARCHAR2(100),
	OPENDATE VARCHAR2(100),
	VOLUME VARCHAR2(100),
	KEYWORD VARCHAR2(200),
	CONSTRAINT PCHFORONE_PK PRIMARY KEY (ID, PCH_NAME)
)

INSERT INTO MYPOUCH VALUES ('ksmo', 'iamsopretty','1000','etude', 'brown','good','cream','perr','eye','eyeshadow','2020-01-30','25g','#pretty #daily #cheap')
INSERT INTO MYPOUCH VALUES ('a', 'iamsocute','2000','etude', 'red','good','cream','perr','eye','eyeshadow','2020-01-30','23g','#pretty #daily #cheap')
INSERT INTO MYPOUCH VALUES ('a', 'springlady','1000','MAC', 'dazzling#23','good','cream','perr','eye','eyeshadow','2020-05-20','15g','#pretty #daily #expensive #remarkable')
INSERT INTO MYPOUCH VALUES ('a', 'iamsopretty-1','1000','etude', 'brown','good','cream','perr','eye','eyeshadow','2020-01-30','25g','#pretty #daily #cheap')

INSERT INTO MYPOUCH VALUES ('a', 'stayallday','105000','bobbybrown', '#21','good','liquid','noperr','base','foundation','2020-03-30','25g','#bright #daily #glosy')
INSERT INTO MYPOUCH VALUES ('a', 'doublewear-bone','60000','esteelauder', 'bone','good','cream','noperr','base','foundation','2020-03-30','30ml','#bright #oily #matt')
INSERT INTO MYPOUCH VALUES ('a', 'doublewear-coolvanila','60000','esteelauder', 'coolvanila','good','cream','noperr','base','foundation','2020-03-30','30ml','#springwarm #oily #matt')
INSERT INTO MYPOUCH VALUES ('a', 'blackcusion','34000','hera', '#23','good','liquid','noperr','base','BBcream','2020-03-30','25g','#bright #daily #matt')
INSERT INTO MYPOUCH VALUES ('a', 'Ultra HD microfinishing pressed powder','55000','makeupforever', 'transparent','good','powder','noperr','base','finishpowder','2020-03-30','6.2g','#dry #bestseller #matt')

INSERT INTO MYPOUCH VALUES ('a', 'bulgarian rose lip treatment bam','19800','isoi', 'pure-red','bad','cream','noperr','lip','lipglose','2020-04-21','5g','#IU #moisture #natural')
INSERT INTO MYPOUCH VALUES ('a', 'matt lipstick chilly','31000','MAC', 'chilly','good','cream','noperr','lip','lipstick','2020-04-21','5g','#IU #moisture #natural')
INSERT INTO MYPOUCH VALUES ('a', 'last velvet lip tint','9000','Bbia', '02 pretty','good','liquid','perr','lip','liptint/locker','2020-05-21','5g','#orange #staylong #bright #summer')
INSERT INTO MYPOUCH VALUES ('a', 'matt lipstick ladydanger','31000','isoi', 'ladydanger','good','cream','noperr','lip','lipstick','2020-04-21','3g','#matt #steadyseller #suji')
INSERT INTO MYPOUCH VALUES ('a', 'stick levres original','12000','uriage', 'pure-red','good','stick','noperr','lip','lipcare','2020-07-11','4g','#france #moisture #solid')

INSERT INTO MYPOUCH VALUES ('a', 'blush sexappeal','40000','NARS', 'sexappeal','good','powder','perr','contouring','blusher','2020-01-09','4.8g','#warmtone #coral #girly')
INSERT INTO MYPOUCH VALUES ('a', 'cheekpop melonpop','60000','clinique', '08 melonpop','good','powder','perr','contouring','blusher','2020-02-20','3.5g','#pink #coral #girly')
INSERT INTO MYPOUCH VALUES ('a', 'last blush peanutblossom','6500','Bbia', '08 peanutblossom','good','powder','noperr','contouring','shading','2020-04-30','2.5g','#cooltone #noreddish #natural #daily')
INSERT INTO MYPOUCH VALUES ('a', 'fruit lip and cheek three different taste','12000','skinfood', '04 fig','good','cream','noperr','contouring','blusher','2020-01-25','7.5g','#warmtone #natural #glosy')
INSERT INTO MYPOUCH VALUES ('a', 'art class by rodin shading','16000','toocoolforschool', 'original','good','powder','noperr','contouring','shading','2020-02-17','9.5g','#reddish #shading #natural')
INSERT INTO MYPOUCH VALUES ('a', 'Prizm air highlighter goldsheer','23000','clio', 'goldsheer','good','powder','perr','contouring','highlighter','2020-06-04','7g','#natural #sliver #party')

SELECT * FROM MYPOUCH

SELECT * FROM MYPOUCH WHERE ID='a' AND PART='base' ORDER BY PARTTYPE
SELECT * FROM MYPOUCH WHERE ID='a' AND PART='lip' ORDER BY PARTTYPE