-- Les datas de Matondo

-- les clients

delete from clients;
DELETE FROM sqlite_sequence WHERE name='clients'; -- permet de reset

INSERT OR REPLACE INTO clients (Nom, email, telephone, adresse, date_inscription)
VALUES 
('Christina Makoundou', 'Christina.Mak@amail.be', '123456789', 'Belgique', '2025-02-06'),
('Mona Makoundou', 'mona.moussassa@bmail.fr', '987654321', 'France', '2024-08-22'),
('Mona-lisa Mboudo', 'Monal.Mboudo@cmail.com', '123789654', 'France', '2022-06-06'),
('Achille Makoundou', 'achille.makoundou@dmail.com', '09876543', 'France', '2024-12-02'),
('Chloe Makoundou', 'chloe.rafaela@email.com', '123769654', 'France', '2023-06-18'),
('Patrick Ndoulou', 'patrick.ndoulou@fmail.com', '09886543', 'France', '2023-12-20'),
('Faye Ndoulou', 'faye.ndoulouPDG@gmail.com', '242123456', 'Congo', '2025-11-27'),
('Jonas Ndoulou', 'jonassaye.123ndoulou@hmail.com', '67898765', 'France', '2024-03-15'),
('Servais Bonazebi', 'Servais.bonazebi@imail.com', '12367894', 'Angleterre', '2022-07-27'),
('Kyesse Doulou', 'Kyesselavoure@jmail.com', '34567891', 'Etats-Unis', '2022-05-15'),
('Devyson Doulou', 'Devyson.thechef@kmail.com', '98765432', 'Etats-Unis', '2025-12-02'),
('Allegra Ebaka', 'Allegra.ebaka@lmail.com', '765498765', 'Etats-Unis', '2024-02-06'),
('Leley Bakaniani', 'Leley.Bakaniani@mail.com', '123123123', 'RDC', '2023-02-06'),
('Stella Doulou', 'Stella.Doulou@nmail.com', '234234234', 'Etats-Unis', '2022-01-05');

-- les produits

delete from produits;
DELETE FROM sqlite_sequence WHERE name='produits'; -- permet de reset

INSERT INTO produits (nom, description, prix, stock, categorie)
VALUES
('Fufu', 'Pâte à base de manioc, spécialité congolaise', 5.99, 100, 'Alimentaire'),
('Tissu Wax', 'Tissu africain coloré pour vêtements', 15.99, 50, 'Textile'),
('Pondu', 'Feuilles de manioc pilées et cuites', 4.50, 80, 'Alimentaire'),
('Makayabu', 'Poisson salé séché', 9.99, 60, 'Alimentaire'),
('Chikwangue', 'Pâte de manioc fermentée emballée dans des feuilles', 3.99, 120, 'Alimentaire'),
('Mbika', 'Poudre de graines de courge pour sauce', 6.50, 45, 'Alimentaire'),
('Malafu', 'Vin de palme naturel', 12.99, 30, 'Boisson'),
('Bissap', 'Jus d’hibiscus naturel', 3.50, 70, 'Boisson');

-- les Employés
delete from employes;
DELETE FROM sqlite_sequence WHERE name='employes'; -- permet de reset

INSERT OR IGNORE INTO employes (nom, role, email, telephone)
VALUES
('Sophie Ndinga', 'Vendeuse', 'sophie.ndinga@omail.com', '0123456789'),
('Pierre Mumba', 'Gestionnaire', 'pierre.mumba@pmail.com', '0234567890'),
('Bruno Mbala', 'Livreur', 'bruno.mbala@qmail.com', '0671234567'),
('Nadine Bakala', 'Comptable', 'nadine.bakala@rmail.com', '0559876543'),
('Alain Kimpavita', 'Responsable stock', 'alain.kimpavita@smail.com', '0783456789');

-- les commandes
delete from commandes;
DELETE FROM sqlite_sequence WHERE name='commandes'; -- permet de reset

INSERT INTO commandes (client_id, employe_id, date_commande, statut, total)
VALUES
(1, 1, '2025-02-06', 'En cours', 17.98),
(2, 2, '2025-02-05', 'Expédiée', 15.99),
(3, 3, '2025-02-04', 'Livrée', 22.50),
(4, 4, '2025-02-03', 'En attente', 9.99),
(5, 5, '2025-02-02', 'Expédiée', 12.99),
(6, 1, '2025-02-07', 'Livrée', 35.99),
(7, 2, '2025-02-06', 'En cours', 19.50),
(8, 3, '2025-02-05', 'Expédiée', 40.00),
(9, 4, '2025-02-04', 'Livrée', 25.99),
(10, 5, '2025-02-03', 'En attente', 14.50),
(11, 1, '2025-02-02', 'Expédiée', 50.99),
(12, 2, '2025-02-01', 'Livrée', 12.99),
(13, 3, '2025-01-31', 'En attente', 18.99),
(14, 4, '2025-01-30', 'Expédiée', 22.50),
(15, 5, '2025-01-29', 'Livrée', 35.00),
(1, 3, '2025-01-28', 'En attente', 29.99),
(2, 4, '2025-01-27', 'Expédiée', 14.99),
(3, 5, '2025-01-26', 'Livrée', 8.99),
(4, 1, '2025-01-25', 'En attente', 27.50),
(5, 2, '2025-01-24', 'Expédiée', 30.99);

-- les paiements
delete from paiements;
DELETE FROM sqlite_sequence WHERE name='paiements'; -- permet de reset

INSERT INTO paiements (commande_id, methode_paiement, statut, date_paiement, montant)
VALUES
(1, 'Carte bancaire', 'Payé', '2025-02-06', 17.98),
(2, 'PayPal', 'Payé', '2025-02-05', 15.99),
(3, 'Espèces', 'Payé', '2025-02-04', 22.50),
(4, 'Virement bancaire', 'En attente', '2025-02-03', 9.99),
(5, 'Carte bancaire', 'Payé', '2025-02-02', 12.99),
(6, 'Carte bancaire', 'Payé', '2025-02-07', 35.99),
(7, 'PayPal', 'Payé', '2025-02-06', 19.50),
(8, 'Espèces', 'Payé', '2025-02-05', 40.00),
(9, 'Carte bancaire', 'Payé', '2025-02-04', 25.99),
(10, 'Virement bancaire', 'En attente', '2025-02-03', 14.50),
(11, 'Carte bancaire', 'Payé', '2025-02-02', 50.99),
(12, 'PayPal', 'Payé', '2025-02-01', 12.99),
(13, 'Espèces', 'En attente', '2025-01-31', 18.99),
(14, 'Carte bancaire', 'Expédiée', '2025-01-30', 22.50),
(15, 'PayPal', 'Payé', '2025-01-29', 35.00),
(16, 'Carte bancaire', 'Payé', '2025-01-28', 29.99),
(17, 'Espèces', 'Payé', '2025-01-27', 14.99),
(18, 'Carte bancaire', 'En attente', '2025-01-26', 8.99),
(19, 'PayPal', 'Payé', '2025-01-25', 27.50),
(20, 'Virement bancaire', 'Expédiée', '2025-01-24', 30.99);

-- détails_commandes
delete from details_commandes;
DELETE FROM sqlite_sequence WHERE name='details_commandes'; -- permet de reset

INSERT INTO details_commandes (commande_id, produit_id, quantite)
VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 4),
(6, 6, 2),
(7, 7, 3),
(8, 8, 5),
(9, 1, 2),
(10, 2, 4),
(11, 3, 1),
(12, 4, 2),
(13, 5, 3),
(14, 6, 1),
(15, 7, 5),
(16, 8, 3),
(17, 1, 2),
(18, 2, 1),
(19, 3, 4),
(20, 4, 2);

-- avis clients 
delete from avis_clients;
DELETE FROM sqlite_sequence WHERE name='avis_clients'; -- permet de reset

INSERT INTO avis_clients (client_id, produit_id, note, commentaire)
VALUES
(1, 1, 4, 'Très bon produit, je recommande !'),
(2, 2, 5, 'Le tissu est magnifique et de très bonne qualité.'),
(3, 3, 3, 'Le Pondu est bon mais un peu trop épicé.'),
(4, 4, 5, 'Le Makayabu a un goût authentique, super !'),
(5, 5, 4, 'Chikwangue bien préparé, mais la quantité est un peu petite.'),
(6, 6, 5, 'Mbika délicieux ! Un bon ingrédient pour mes plats.'),
(7, 7, 2, 'Un peu trop sucré pour moi, mais agréable.'),
(8, 8, 4, 'Jus de Bissap très bon, je vais en recommander.'),
(9, 1, 3, 'Le Fufu est bon mais un peu cher.'),
(10, 2, 5, 'Super tissu, très résistant.'),
(11, 3, 4, 'Le Pondu est savoureux et bien préparé.'),
(12, 4, 2, 'Makayabu trop sec pour moi.'),
(13, 5, 5, 'Chikwangue de qualité ! J’adore.'),
(14, 6, 4, 'Mbika en bonne quantité et bien emballé.'),
(15, 7, 5, 'Très bon Malafu, naturel et bien fermenté.'),
(16, 8, 3, 'Le jus manque un peu de fraîcheur.'),
(17, 1, 5, 'Parfait, exactement ce que je voulais.'),
(18, 2, 4, 'Le design du Wax est magnifique.'),
(19, 3, 3, 'Pondu un peu fade, mais correct.'),
(20, 4, 5, 'Makayabu très bon, je vais en recommander.');

-- stock et réapprovisionnements
delete from stocks_reapprovisionnement;
DELETE FROM sqlite_sequence WHERE name='stocks_reapprovisionnement'; -- permet de reset

INSERT INTO stocks_reapprovisionnement (produit_id, quantite_ajoutee)
VALUES
(1, 50),
(2, 30),
(3, 20),
(4, 25),
(5, 40),
(6, 15),
(7, 30),
(8, 50);


