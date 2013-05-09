-- create table users, the only table used in the demo
create table users (
	user_id integer AUTO_INCREMENT, 
	email varchar(255), 
	name varchar(255), 
	password varchar(255), 
	username varchar(255), 
	constraint users_pk primary key (user_id)
); 