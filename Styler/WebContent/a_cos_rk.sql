create table test_member
(
id varchar2(100),
pw varchar2(100),
addr varchar2(100),
constraint id_pk primary key (id)
)

create table test_member_fk
(
id varchar2(100),
location varchar2(100)
constraint id_fk foreign key
)
