CREATE TABLE IF NOT EXISTS suscription
( 
id_suscription int auto_increment not null primary key unique,
type_suscrip varchar(15) not null
);

create table if not exists artist (
id_artist int auto_increment not null primary key unique,
name_artist varchar(150) not null,
country varchar(100) not null
);

create table if not exists album (
id_album int auto_increment not null primary key unique,
name_album varchar(150) not null,
date_album date not null,
id_artist int not null
);

create table if not exists song (
id_song int auto_increment not null primary key unique,
name_song  varchar(150) not null,
id_artist int not null,
id_album int not null,
duration varchar(10)
);

create table if not exists user(
id_user int auto_increment not null primary key unique,
first_name varchar(150) not null,
last_name varchar(150) not null,
date_register date not null,
email varchar(150) not null,
id_suscript int not null,
date_birth date not null,
country varchar(100) not null
);

create table if not exists playlist (
id_playlist int auto_increment not null primary key unique,
name_playlist varchar(150) not null,
date_creation date not null,
id_song int not null,
id_user int not null
);