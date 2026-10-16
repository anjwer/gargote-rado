create table clients(
    id_client serial primary key, 
    nom varchar(200)
);

alter table commandes add column id_client int references clients(id_client);

insert into clients (nom) values ('Rakoto'), ('Rasoa');

-- 1 commande sans client
insert into commandes (daty, id_client) VALUES ('2026-10-15', NULL);

-- 1 commande associée à un client
insert into commandes (daty, id_client) VALUES ('2026-10-16', 1);