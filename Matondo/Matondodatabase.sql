-- Création des tables

-- Client

DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    telephone TEXT,
    adresse TEXT,
    date_inscription DATE DEFAULT (CURRENT_DATE)
);


-- Product

DROP TABLE IF EXISTS produits;

CREATE TABLE produits (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    description TEXT,
    prix REAL NOT NULL,
    stock INTEGER DEFAULT 0,
    categorie TEXT
);


-- Employé

DROP TABLE IF EXISTS employes;

CREATE TABLE employes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    role TEXT,
    email TEXT UNIQUE NOT NULL,
    telephone TEXT,
    date_embauche DATE DEFAULT (CURRENT_DATE)
);


-- commande

DROP TABLE IF EXISTS commandes;

CREATE TABLE commandes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    client_id INTEGER NOT NULL,
    employe_id INTEGER,
    date_commande DATE DEFAULT (CURRENT_DATE),
    statut TEXT DEFAULT 'En attente',
    total REAL NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (employe_id) REFERENCES employes(id)
);


-- paiement

DROP TABLE IF EXISTS paiements;

CREATE TABLE paiements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    commande_id INTEGER NOT NULL,
    methode_paiement TEXT NOT NULL,
    statut TEXT DEFAULT 'Payé',
    date_paiement DATE DEFAULT (CURRENT_DATE),
    montant REAL NOT NULL,
    FOREIGN KEY (commande_id) REFERENCES commandes(id)
);


-- details des commandes 

DROP TABLE IF EXISTS details_commandes;

CREATE TABLE details_commandes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    commande_id INTEGER NOT NULL,
    produit_id INTEGER NOT NULL,
    quantite INTEGER NOT NULL,
    FOREIGN KEY (commande_id) REFERENCES commandes(id),
    FOREIGN KEY (produit_id) REFERENCES produits(id)
);


-- avis client

DROP TABLE IF EXISTS avis_clients;

CREATE TABLE avis_clients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    client_id INTEGER NOT NULL,
    produit_id INTEGER NOT NULL,
    note INTEGER CHECK (note BETWEEN 1 AND 5),
    commentaire TEXT,
    date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (produit_id) REFERENCES produits(id)
);


-- stock reapprovisionnement

DROP TABLE IF EXISTS stocks_reapprovisionnement;

CREATE TABLE stocks_reapprovisionnement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    produit_id INTEGER NOT NULL,
    quantite_ajoutee INTEGER NOT NULL,
    date_reapprovisionnement DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (produit_id) REFERENCES produits(id)
);
