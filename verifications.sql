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

-- verification etape 4

SELECT
    co.id_commande,
    co.daty,
    COALESCE(cl.nom, 'client de passage') AS nom_client
FROM commandes co
LEFT JOIN clients cl
    ON co.id_client = cl.id_client;

-- verification etape 5

select c.id_serveur, 
        count(distinct c.id_commande) as nbcommandes ,
        COALESCE(SUM(lc.quantite * p.prix_unitaire), 0) AS ca 
from commandes c
left join ligne_commande lc on lc.id_commande = c.id_commande
left join plats p on p.id_plat = lc.id_plat 
group by c.id_serveur;
