DROP TABLE COSMETIC;

CREATE TABLE COSMETIC(
	PCH_NAME VARCHAR2(100),
	PRICE VARCHAR2(100),
	BRAND VARCHAR2(100),
	COLOR VARCHAR2(100),
	PERFO VARCHAR2(100),
	PTYPE VARCHAR2(100),
	PERR VARCHAR2(100),
	PART VARCHAR2(100),
	PARTTYPE VARCHAR2(100),
	VOLUME VARCHAR2(100),
	KEYWORD VARCHAR2(200),
	CONSTRAINT SINGLECOSMETIC_PK PRIMARY KEY (PCH_NAME)
)
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

INSERT INTO COSMETIC VALUES ('iamsopretty','1000','etude', 'brown','good','cream','perr','eye','eyeshadow','25g','#pretty #daily #cheap')
INSERT INTO COSMETIC VALUES ('iamsocute','2000','etude', 'red','good','cream','perr','eye','eyeshadow','23g','#pretty #daily #cheap')
INSERT INTO COSMETIC VALUES ('springlady','1000','MAC', 'dazzling#23','good','cream','perr','eye','eyeshadow','15g','#pretty #daily #expensive #remarkable')
INSERT INTO COSMETIC VALUES ('iamsosexy','1000','etude', 'brown','good','cream','perr','eye','eyeshadow','25g','#pretty #daily #cheap');
INSERT INTO COSMETIC VALUES ('s','1000','MAC', 'dazzling#23','good','cream','perr','eye','eyeshadow','15g','#pretty #daily #expensive #remarkable')
INSERT INTO COSMETIC VALUES ('i','1000','etude', 'brown','good','cream','perr','eye','eyeshadow','25g','#pretty #daily #cheap');

INSERT INTO COSMETIC VALUES ('stayallday','105000','bobbybrown', '#21','good','liquid','noperr','base','foundation','25g','#bright #daily #glosy')
INSERT INTO COSMETIC VALUES ('doublewear-bone','60000','esteelauder', 'bone','good','cream','noperr','base','foundation','30ml','#bright #oily #matt')
INSERT INTO COSMETIC VALUES ('doublewear-coolvanila','60000','esteelauder', 'coolvanila','good','cream','noperr','base','foundation','30ml','#springwarm #oily #matt')
INSERT INTO COSMETIC VALUES ('blackcusion','34000','hera', '#23','good','liquid','noperr','base','BBcream','25g','#bright #daily #matt')
INSERT INTO COSMETIC VALUES ('Ultra HD microfinishing pressed powder','55000','makeupforever', 'transparent','good','powder','noperr','base','finishpowder','6.2g','#dry #bestseller #matt')

INSERT INTO COSMETIC VALUES ('bulgarian rose lip treatment bam','19800','isoi', 'pure-red','bad','cream','noperr','lip','lipglose','5g','#IU #moisture #natural')
INSERT INTO COSMETIC VALUES ('matt lipstick chilly','31000','MAC', 'chilly','good','cream','noperr','lip','lipstick','5g','#IU #moisture #natural')
INSERT INTO COSMETIC VALUES ('last velvet lip tint','9000','Bbia', '02 pretty','good','liquid','perr','lip','liptint/locker','5g','#orange #staylong #bright #summer')
INSERT INTO COSMETIC VALUES ('matt lipstick ladydanger','31000','isoi', 'ladydanger','good','cream','noperr','lip','lipstick','3g','#matt #steadyseller #suji')
INSERT INTO COSMETIC VALUES ('stick levres original','12000','uriage', 'pure-red','good','stick','noperr','lip','lipcare','4g','#france #moisture #solid')

INSERT INTO COSMETIC VALUES ('blush sexappeal','40000','NARS', 'sexappeal','good','powder','perr','contouring','blusher','4.8g','#warmtone #coral #girly')
INSERT INTO COSMETIC VALUES ('cheekpop melonpop','60000','clinique', '08 melonpop','good','powder','perr','contouring','blusher','3.5g','#pink #coral #girly')
INSERT INTO COSMETIC VALUES ('last blush peanutblossom','6500','Bbia', '08 peanutblossom','good','powder','noperr','contouring','shading','2.5g','#cooltone #noreddish #natural #daily')
INSERT INTO COSMETIC VALUES ('fruit lip and cheek three different taste','12000','skinfood', '04 fig','good','cream','noperr','contouring','blusher','7.5g','#warmtone #natural #glosy')
INSERT INTO COSMETIC VALUES ('art class by rodin shading','16000','toocoolforschool', 'original','good','powder','noperr','contouring','shading','9.5g','#reddish #shading #natural')
INSERT INTO COSMETIC VALUES ('Prizm air highlighter goldsheer','23000','clio', 'goldsheer','good','powder','perr','contouring','highlighter','7g','#natural #sliver #party')


SELECT * FROM COSMETIC;