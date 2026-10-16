create database gargote;
\c gargote;

create table plats(
    id_plat serial primary key,
    libelle varchar(100) not null,
    prix_unitaire int not null
);


INSERT INTO plats (libelle, prix_unitaire) VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy', 1000),
('Ranon''ampango', 500);
