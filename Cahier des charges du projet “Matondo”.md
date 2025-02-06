# Cahier des charges du projet "Matondo"

## 1. Introduction  
**Nom du projet :** Matondo  
**Objectif :** Créer une plateforme e-commerce permettant la vente de produits exotiques des deux Congos (RDC et République du Congo) en ligne et en magasin. L'objectif est de fournir une interface simple et fluide pour les clients tout en permettant aux administrateurs de gérer les produits, les commandes, et les paiements.

---

## 2. Description du projet  
Matondo est une boutique proposant des produits typiques des deux Congos, incluant des articles alimentaires, artisanaux, textiles, etc. Les clients peuvent acheter en ligne via le site web et se faire livrer ou choisir de retirer leur commande en magasin.

### Objectifs spécifiques :
- **Créer une boutique en ligne fonctionnelle** qui permet aux clients de découvrir et acheter des produits.
- **Gérer le stock** de produits en temps réel pour éviter les ruptures de stock.
- **Permettre la gestion des commandes**, des paiements et des avis clients.
- **Analyser les ventes et les comportements clients** pour améliorer l'expérience utilisateur.

---

## 3. Fonctionnalités attendues

### 3.1 Gestion des produits
- Ajouter, modifier et supprimer des produits.
- Catégoriser les produits (alimentaire, artisanat, textiles, etc.).
- Suivre le stock et la disponibilité des produits.
- Afficher les détails de chaque produit (description, prix, stock, etc.).

### 3.2 Gestion des clients
- Enregistrement des clients avec leurs informations personnelles (nom, email, adresse, téléphone).
- Historique des achats et des commandes des clients.
- Suivi de l’activité client (commande récente, produits favoris, etc.).

### 3.3 Gestion des employés
- Enregistrement des employés et de leurs rôles (ex : vendeur, gestionnaire).
- Attribution des commandes aux employés pour le traitement.

### 3.4 Commandes et paiements
- Création et suivi des commandes passées par les clients.
- Gestion des méthodes de paiement (carte bancaire, PayPal, espèces).
- Génération de factures et suivi des paiements.
- Suivi du statut des commandes (en attente, payé, expédié).

### 3.5 Avis clients
- Permettre aux clients de laisser des avis et des notes sur les produits.
- Analyser les évaluations pour améliorer la qualité des produits.

### 3.6 Gestion du stock et réapprovisionnement
- Suivi des stocks des produits.
- Gestion des réapprovisionnements pour éviter les ruptures.
- Alertes lorsque les stocks sont faibles.

---

## 4. Structure de la base de données

### 4.1 Tables nécessaires :
- **Clients :** Informations des clients inscrits sur la plateforme.
- **Produits :** Liste des produits disponibles avec description, prix, et stock.
- **Employés :** Liste des employés et leurs rôles.
- **Commandes :** Enregistre les commandes passées par les clients.
- **Paiements :** Suivi des paiements associés aux commandes.
- **Détails_Commandes :** Liste des produits dans chaque commande.
- **Avis Clients :** Avis laissés par les clients sur les produits.
- **Stocks et Réapprovisionnements :** Gestion du stock et des réapprovisionnements des produits.

### 4.2 Relations entre les tables :
- **Produits** et **Commandes** : Une commande peut contenir plusieurs produits.
- **Clients** et **Commandes** : Un client peut passer plusieurs commandes.
- **Commandes** et **Paiements** : Chaque commande a un paiement associé.
- **Avis Clients** : Un client peut laisser un avis sur un produit.

---

## 5. Critères techniques

### 5.1 Outils de développement :
- **Langages** : SQL, HTML, CSS, JavaScript, PHP (ou un autre backend à choisir).
- **Base de données** : SQLite Online pour la gestion de la base de données.
- **Hébergement** : Serveur web pour héberger la boutique en ligne (ex : Heroku, Netlify, ou un serveur privé).
- **Plateforme** : Site web responsive pour un accès facile depuis mobile et desktop.

### 5.2 Performance et sécurité :
- Optimiser la vitesse de chargement des pages pour une meilleure expérience utilisateur.
- Sécuriser les données personnelles des clients (cryptage des mots de passe, protection contre les attaques SQL injection).
- Assurer la gestion des erreurs et des exceptions sur le site.

---

## 6. Analyse de données (Data Analytics)

### 6.1 Objectifs d’analyse :
- **Analyse des ventes** : Suivre l’évolution des ventes mensuelles, par produit, et par employé.
- **Analyse du comportement client** : Identifier les clients récurrents, leurs habitudes d’achat et leurs préférences.
- **Gestion des stocks** : Analyser la fréquence des ruptures de stock et la demande des produits pour optimiser les réapprovisionnements.
- **Satisfaction client** : Étudier les avis clients pour identifier les points à améliorer.

### 6.2 Outils d’analyse :
- **Requêtes SQL** : Analyser les données directement depuis la base de données (ex : top produits vendus, revenu par mois, etc.).
- **Tableaux de bord** : Créer des rapports visuels pour suivre les indicateurs clés de performance (KPI) via des outils comme Google Data Studio ou Power BI (si possible).

---

## 7. Planning du projet

### 7.1 Phases du projet :
1. **Conception de la base de données** : Création des tables et des relations.
2. **Développement du site web** : Mise en place de l’interface utilisateur et des fonctionnalités.
3. **Tests et débogage** : Vérification de la fluidité de la plateforme et de la fiabilité des processus.
4. **Mise en ligne et suivi** : Lancement de la boutique en ligne et suivi des performances.

### 7.2 Durée estimée :
- **Phase 1 :** Conception de la base de données - 1 à 2 semaines.
- **Phase 2 :** Développement du site - 4 à 6 semaines.
- **Phase 3 :** Tests et ajustements - 2 semaines.
- **Phase 4 :** Mise en ligne - 1 semaine.

---

## 8. Conclusion
Le projet "Matondo" vise à offrir une plateforme e-commerce pratique et efficace pour la vente de produits exotiques Congolais. En plus de l'aspect fonctionnel, une attention particulière sera portée à l'analyse des données pour optimiser les ventes, la gestion des stocks et la satisfaction des clients. Ce projet servira également de base pour explorer des techniques avancées en **Data Analytics**.
