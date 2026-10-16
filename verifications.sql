-- verification etape 1
select * from plats order by prix_unitaire desc;

-- verifictaion etape 2
select count(*) from plats group by id_categorie;

-- verification etape 3
SELECT
    lc.id_commande,
    p.libelle,
    lc.quantite,
    p.prix_unitaire,
    p.prix_unitaire * lc.quantite AS montant,
    SUM(p.prix_unitaire * lc.quantite)
        OVER (PARTITION BY lc.id_commande) AS total
FROM ligne_commande lc
JOIN plats p ON lc.id_plat = p.id_plat;
