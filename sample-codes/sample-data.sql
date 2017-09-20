GRANT ALL ON test.* TO 'appuser'@'localhost';

create table users ( userid int(9) NOT NULL auto_increment, name char(50) NOT NULL, email char(100) NOT NULL, primary key (userid));

insert into users (name, email) values ('John Silva', 'john@silva.net');

insert into users (name, email) values ('Jose Almaraz', 'noway@jose.net');