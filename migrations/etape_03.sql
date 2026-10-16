create table commandes(
    id_commande serial primary key,
    daty date not null
);

create table ligne_commande(
    id_ligne_commande serial primary key,
    id_commande int references commandes(id_commande),
    id_plat int references plats(id_plat), 
    quantite int not null
); 


INSERT INTO commandes (daty) VALUES ('2026-10-16');
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES
(1, 1, 2), -- 2 Romazava
(1, 2, 1), -- 1 Ravitoto sy henakisoa
(1, 3, 3), -- 3 Akoho sy voanio
(1, 4, 2), -- 2 Mi sao
(1, 5, 1); -- 1 Soupe chinoise