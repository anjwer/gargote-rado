create table tables(
    id_table serial primary key,
    libelle varchar(50) 
);

create table serveurs(
    id_serveur serial primary key,
    nom varchar(200) not null
);

alter table commandes add column id_table int references tables(id_table);
alter table commandes add column id_serveur int references serveurs(id_serveur);

insert into serveurs (nom) values
('Njaka Rakoto'),
('Lalao Rasoa');

insert into tables (libelle) values 
('Table 01'),
('Table 02'),
('Table 03'),
('Table 04'),
('Table 05'),
('Table 06'),
('Table 07'),
('Table 08');

INSERT INTO commandes (daty, id_table, id_serveur)
VALUES
('2026-10-15', 1, 1),
('2026-10-16', 2, 2);

INSERT INTO ligne_commande (id_commande, id_plat, quantite)
VALUES
-- Commande 1 : serveur 1
(1, 1, 2),
(1, 2, 1),
-- Commande 2 : serveur 2
(2, 4, 2),
(2, 5, 1);

UPDATE commandes SET id_serveur = 1 WHERE id_commande = 1;
UPDATE commandes SET id_serveur = 2 WHERE id_commande = 2;
UPDATE commandes SET id_serveur = 2 WHERE id_commande = 3;

alter table commandes alter column id_serveur set not null;
