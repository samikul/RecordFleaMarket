-- levyn luontilause

CREATE TABLE levy(
id int auto_increment not null,
artisti varchar(50),
levynNimi varchar(50),
genre varchar(50),
formaatti varchar(6),
kuntoluokitus varchar(3),
hinta decimal(6,2) not null,
email varchar(50) not null,
primary key(id)
)engine=InnoDB;