create table board (          
bno int not null auto_increment,           
title varchar(200) not null, 
content varchar(4000)not null ,        
writer varchar(50) not null, 
regdate datetime NOT NULL default now(),
viewcnt int default 0,      
primary key(bno)               
);


SELECT DATE_FORMAT(NOW(),'%Y-%m-%d') AS DATE FROM DUAL

SELECT DATE_FORMAT(NOW(),'%Y년%m월%d일 %H시%i분%S초') AS DATE FROM DUAL


insert into board(title, content, writer) values("test","test","test");
insert into board(title, content, writer) values("test1","test1","test1");
insert into board(title, content, writer) values("test2","test2","test2");

select * from board;

drop table board;

