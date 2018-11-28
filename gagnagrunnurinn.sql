create database 1803012590_vef_lok;
use 1803012590_vef_lok;

create table 1803012590_vef_lok.users(
user varchar(32) not null,
pass varchar(32) not null,
nafn varchar(32) not null,
primary key (user)
);

insert into 1803012590_vef_lok.users (user, pass, nafn)
values ("SiggiSteinn","pass123","Sigursteinn");

create table 1803012590_vef_lok.comment(
commID INt auto_increment,
comment text not null,
user varchar(32) not null,
primary key (commID),

);