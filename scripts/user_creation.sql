-- create user 'hackfmi' with password 'hackfmi'
create user 'hackfmi'@'localhost' identified by 'hackfmi';

-- give user 'hackfmi' full privileges for hackfmi_db
grant all privileges on hackfmi_db.* to 'hackfmi'@'localhost';
flush privileges;

-- now user hackfmi can connect to hackfmi_db with password hackfmi
-- mysql -u hackfmi -p hackfmi_db;