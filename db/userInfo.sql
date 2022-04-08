
create table bp_userInfo(
	userNum int not null auto_increment,     
	userNicName varchar(20),
	userID varchar(20),
	userEmail varchar(50),
	userPassword varchar(20),
	joindate datetime NOT NULL default now(),
	userLevel int default 0,
	unique key(userID),
	primary key(userNum)
); 

insert into bp_userInfo(userNicName, userID, userEmail, userPassword, userLevel) values ("admin", "admin", "admin@admin.com", "1111", 9999);

select * from userInfo;