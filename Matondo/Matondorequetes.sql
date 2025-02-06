-- Les requetes 

-- pour vérifier que les datas ont bien été mis 

/*select * from clients;
select * from commandes;
select * from paiements;
select * from employes;
select * from avis_clients;
select * from stocks_reapprovisionnement;
select * from details_commandes;
select * from produits;*/

------- Demander à la base de données ---------
-- Récupérer la liste des clients ok

-- Afficher tous les produits en stock ok

SELECT * FROM produits
WHERE stock > 0;

-- Voir toutes les commandes passées ok

/*select * from commandes 
where commandes.date < '2025-02-06';*/

select * from commandes 
where date_commande < CURRENT_DATE;

-- Vérifier combien de commandes 
-- chaque client a passées

Select clients.nom, count(commandes.id) AS nombre_commandes from clients
join commandes on clients.id = commandes.client_id
group by clients.nom
order by nombre_commandes desc;

------------

-- Trouver les 5 clients qui ont commandé le plus
select clients.nom, count(commandes.id) as nombre_commandes
from clients
join commandes on clients.id = commandes.client_id
group by clients.nom
order by nombre_commandes desc
limit 5;

-- identifier les 3 produits les plus vendus

select produits.nom, sum(details_commandes.quantite) as nombre_produits
from produits
join details_commandes on produits.id = details_commandes.produit_id
group by produits.nom
order by nombre_produits desc
limit 3;

-- calculer les revenus générés par produit

select produits.nom, sum(details_commandes.quantite * produits.prix) as revenu_total
from produits
join details_commandes on produits.id = details_commandes.produit_id
group by produits.nom
order by revenu_total desc;

------------

-- voir quel employé a traité le plus de commandes

-- verifier quels produits 
--sont presque en rupture de stock

-- calculer le nombre total de commandes traitées
--par chaque employé

-- calculer le chiffre d'affaires total

-- analyser les revenus par mois

-- trouver le mois avec le plus de ventes

-- identifier les clients fidèles 
--qui commandent régulièrement

-- determiner les produits les plus commandés
-- ensemble (cross-selling)

-- trouver les périodes de l'année ou
-- les ventes sont les plus élevés