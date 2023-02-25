create database HomeRentingStm;
use HomeRentingStm;
create table homeinfo
(
homeid int,
roomquentity INT,
location varchar(35),
rent int,
flatno int,
blockno varchar(20),
homearea VARCHAR(20),
primary KEY (homeid)
);
create table ownerinfo
(
ownerid int,
ownername varchar(30),
nid INT,
location varchar(35),
phone varchar(20),
homeid int,
primary KEY (ownerid),
foreign key (homeid) references homeinfo (homeid) ON DELETE CASCADE
);

create table tenantinfo
(
tenantid int,
tenantname varchar(30),
nid INT,
location varchar(35),
phone varchar(20),
marriedS varchar(20),
homeid int,
ownerid int,
primary KEY (tenantid),
foreign key (homeid) references homeinfo (homeid) ON DELETE CASCADE,
foreign key (ownerid) references ownerinfo (ownerid) ON DELETE CASCADE
);
create table facility
(
hospital varchar(35),
police varchar(20),
school varchar(20),
park varchar(20),
fireservice varchar(20),
homeid int,
foreign key (homeid) references homeinfo (homeid) ON DELETE CASCADE
);
insert into homeinfo(homeid,roomquentity,location,rent,flatno,blockno,homearea)
value (1023,5,'mirpur',15000,17,'D-block','Near BUBT');

SELECT * FROM homeinfo;

SELECT * FROM homeinfo
WHERE location = 'mirpur';






