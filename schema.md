# Schema relationnel 


PLATS(**id_plat**, libelle, prix_unitaire, #id_categorie )

- Piege 1 : Pour le prix je choisis int parce que les prix en Ariary sont des entiers. Je prends l'identifiant **id_plat**.


CATEGORIES(**id_categorie**, libelle)

- Piege 2: On ne peut pas simplemet ajouter une colonne categorie a remplir a la main parce que ce n'est pas pratique de devoir inserer a chaque fois une meme categorie (3 plats malagasy, on doit ecrire a chaque fois). Ensuite il peut y avoir des differentes saisies pour une seule categorie (plat malagasy different de plats malagasy), cela complique le filtre par categorie.

*modifie*
COMMANDES(**id_commande**, daty, #id_client?, #id_table?, #id_serveur)
LIGNE_COMMANDE(**id_ligne_commande**, #id_commande, #id_plat, quantite)

- Piege 3 : Je place la quantite dans ligne_commande.

CLIENTS(**id_client**, nom)

- Piege 4 : la cle etrangere peut etre null, on utilise LEFT JOIN. 

*nouveau*
TABLES(**id_table**, libelle?)
SERVEURS(**id_serveur**, nom)

- Piege 5 : Une table peut avoir plusieurs commandes mais une commande n'est reliee qu'a une seule table (ou aucune si c'est a emporter). Le nom table pose probleme parce que c'est un mot cle en SQL.