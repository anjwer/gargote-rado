-- verification etape 1
select * from plats order by prix_unitaire desc;

-- verifictaion etape 2
select count(*) from plats group by id_categorie;