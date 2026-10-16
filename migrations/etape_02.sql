create table categories(
    id_categorie serial primary key,
    libelle varchar(100) not null
);

insert into categories (libelle) values 
('Plats malagasy'),
('Plats chinois'),
('Soupes'),
('Desserts'),
('Boissons');

alter table plats add column id_categorie int references categories(id_categorie);

update plats set id_categorie = 1 where id_plat <= 3;
update plats set id_categorie = 2 where id_plat = 4;
update plats set id_categorie = 3 where id_plat = 5;
update plats set id_categorie = 4 where id_plat = 6;
update plats set id_categorie = 5 where id_plat = 7;

alter table plats alter column id_categorie set not null;