create table board (          
bno int not null auto_increment,           
title varchar(200) not null, 
content varchar(4000)not null ,        
writer varchar(50) not null, 
regdate TIMESTAMP NOT NULL default NOW(),
viewcnt int default 0,      
primary key(bno)               
);

insert into board(title, content, writer) values("test","test","test");
insert into board(title, content, writer) values("test1","test1","test1");
insert into board(title, content, writer) values("test2","test2","test2");

select * from board;