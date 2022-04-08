create table bp_board (          
bno int not null auto_increment,           
title varchar(200) not null, 
content varchar(4000)not null ,        
writer varchar(50) not null, 
regdate datetime NOT NULL default now(),
viewcnt int default 0,      
primary key(bno)               
);





insert into bp_board(title, content, writer) values("test","test","admin");
insert into bp_board(title, content, writer) values("test1","test1","admin");
insert into bp_board(title, content, writer) values("test2","test2","admin");

select * from bp_board;

drop table board;
drop table user;

select * from board;
select * from user;



