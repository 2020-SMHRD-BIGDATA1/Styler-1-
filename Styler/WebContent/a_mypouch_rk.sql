create table 화장품
(
cos_ireum varchar2(1000),
cos_jehyung varchar2(10),
cos_gwang varchar2(10),
cos_saekkal varchar2(10),
cos_gagyuk varchar2(10),
cos_perl varchar2(10),
cos_clusterid varchar2(10)
)

select * from a_cos_rk
		
drop table a_cos_rk		

create table 마이파우치
(
id varchar2(100),
mypouch_ireum varchar2(100),
mypouch_jehyung varchar2(10),
mypouch_gwang varchar2(10),
mypouch_seakkal varchar2(10),
mypouch_gagyuk varchar2(10),
mypouch_perl varchar2(10),
mypouch_gaebong varchar2(100),
mypouch_clusterid varchar2(10),


constraint memberid_fk foreign key (id) references motdmember (id)
)
select * from 마이파우치
drop table 마이파우치