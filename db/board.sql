create table board (          
bno number not null,           
title varchar2(200) not null, 
content varchar2(4000),        
writer varchar2(50) not null, 
regdate date default sysdate,  
viewcnt number default 0,      
primary key(bno)               
);