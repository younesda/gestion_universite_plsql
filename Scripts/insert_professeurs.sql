-- PROFESSEURS DU DÉPARTEMENT INDORMATIQUES (departement_id = 1)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Dupont', 'Jean', 'jean.dupont@ecole.fr', '0601020304', TO_DATE('1985-05-15', 'YYYY-MM-DD'), TO_DATE('2015-09-01', 'YYYY-MM-DD'), 45000, 'Bases de données', 1);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Bernard', 'Marie', 'marie.bernard@ecole.fr', '0602030405', TO_DATE('1980-08-22', 'YYYY-MM-DD'), TO_DATE('2012-09-01', 'YYYY-MM-DD'), 52000, 'Intelligence Artificielle', 1);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Leroy', 'Thomas', 'thomas.leroy@ecole.fr', '0603040506', TO_DATE('1988-11-30', 'YYYY-MM-DD'), TO_DATE('2018-09-01', 'YYYY-MM-DD'), 42000, 'Développement Web', 1);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Morel', 'Sébastien', 'sebastien.morel@ecole.fr', '0604050607', TO_DATE('1987-10-05', 'YYYY-MM-DD'), TO_DATE('2017-09-01', 'YYYY-MM-DD'), 43000, 'Réseaux', 1);

-- PROFESSEURS DU DÉPARTEMENT MATHÉMATIQUES (departement_id = 2)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Martin', 'Sophie', 'sophie.martin@ecole.fr', '0605060708', TO_DATE('1982-03-20', 'YYYY-MM-DD'), TO_DATE('2010-09-01', 'YYYY-MM-DD'), 55000, 'Algèbre', 2);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Dubois', 'Pierre', 'pierre.dubois@ecole.fr', '0606070809', TO_DATE('1975-12-05', 'YYYY-MM-DD'), TO_DATE('2005-09-01', 'YYYY-MM-DD'), 62000, 'Analyse', 2);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Moreau', 'Isabelle', 'isabelle.moreau@ecole.fr', '0607080910', TO_DATE('1987-07-18', 'YYYY-MM-DD'), TO_DATE('2016-09-01', 'YYYY-MM-DD'), 46000, 'Statistiques', 2);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Lefebvre', 'Hélène', 'helene.lefebvre@ecole.fr', '0608091011', TO_DATE('1976-05-17', 'YYYY-MM-DD'), TO_DATE('2006-09-01', 'YYYY-MM-DD'), 63000, 'Probabilités', 2);

-- PROFESSEURS DU DÉPARTEMENT PHYSIQUE (departement_id = 3)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Durand', 'Paul', 'paul.durand@ecole.fr', '0609101112', TO_DATE('1983-06-10', 'YYYY-MM-DD'), TO_DATE('2013-09-01', 'YYYY-MM-DD'), 50000, 'Mécanique quantique', 3);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Simon', 'Émilie', 'emilie.simon@ecole.fr', '0610111213', TO_DATE('1986-09-14', 'YYYY-MM-DD'), TO_DATE('2017-09-01', 'YYYY-MM-DD'), 44000, 'Optique', 3);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Michel', 'André', 'andre.michel@ecole.fr', '0611121314', TO_DATE('1978-04-28', 'YYYY-MM-DD'), TO_DATE('2008-09-01', 'YYYY-MM-DD'), 58000, 'Thermodynamique', 3);

-- PROFESSEURS DU DÉPARTEMENT CHIMIE (departement_id = 4)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Fournier', 'Julien', 'julien.fournier@ecole.fr', '0612131415', TO_DATE('1984-02-16', 'YYYY-MM-DD'), TO_DATE('2014-09-01', 'YYYY-MM-DD'), 47000, 'Chimie organique', 4);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Blanc', 'Nathalie', 'nathalie.blanc@ecole.fr', '0613141516', TO_DATE('1981-08-09', 'YYYY-MM-DD'), TO_DATE('2011-09-01', 'YYYY-MM-DD'), 53000, 'Chimie analytique', 4);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Girard', 'Marc', 'marc.girard@ecole.fr', '0614151617', TO_DATE('1989-05-21', 'YYYY-MM-DD'), TO_DATE('2019-09-01', 'YYYY-MM-DD'), 40000, 'Biochimie', 4);

-- PROFESSEURS DU DÉPARTEMENT BIOLOGIE (departement_id = 5)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Bonnet', 'Caroline', 'caroline.bonnet@ecole.fr', '0615161718', TO_DATE('1985-10-03', 'YYYY-MM-DD'), TO_DATE('2015-09-01', 'YYYY-MM-DD'), 45000, 'Génétique', 5);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Faure', 'Olivier', 'olivier.faure@ecole.fr', '0616171819', TO_DATE('1979-12-27', 'YYYY-MM-DD'), TO_DATE('2009-09-01', 'YYYY-MM-DD'), 56000, 'Microbiologie', 5);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Roux', 'Sylvie', 'sylvie.roux@ecole.fr', '0617181920', TO_DATE('1988-06-15', 'YYYY-MM-DD'), TO_DATE('2018-09-01', 'YYYY-MM-DD'), 42000, 'Écologie', 5);

-- PROFESSEURS DU DÉPARTEMENT ÉCONOMIE (departement_id = 6)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Bertrand', 'Alain', 'alain.bertrand@ecole.fr', '0618192021', TO_DATE('1977-09-19', 'YYYY-MM-DD'), TO_DATE('2007-09-01', 'YYYY-MM-DD'), 60000, 'Macroéconomie', 6);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Chevalier', 'Sandrine', 'sandrine.chevalier@ecole.fr', '0619202122', TO_DATE('1986-04-11', 'YYYY-MM-DD'), TO_DATE('2016-09-01', 'YYYY-MM-DD'), 46000, 'Finance', 6);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Gauthier', 'Christophe', 'christophe.gauthier@ecole.fr', '0620212223', TO_DATE('1990-07-23', 'YYYY-MM-DD'), TO_DATE('2020-09-01', 'YYYY-MM-DD'), 38000, 'Marketing', 6);

-- PROFESSEURS DU DÉPARTEMENT LETTRES (departement_id = 7)
INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Rousseau', 'Catherine', 'catherine.rousseau@ecole.fr', '0621222324', TO_DATE('1979-11-12', 'YYYY-MM-DD'), TO_DATE('2009-09-01', 'YYYY-MM-DD'), 54000, 'Littérature française', 7);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Vincent', 'Philippe', 'philippe.vincent@ecole.fr', '0622232425', TO_DATE('1984-06-08', 'YYYY-MM-DD'), TO_DATE('2014-09-01', 'YYYY-MM-DD'), 47000, 'Linguistique', 7);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Lambert', 'Julie', 'julie.lambert@ecole.fr', '0623242526', TO_DATE('1991-02-14', 'YYYY-MM-DD'), TO_DATE('2021-09-01', 'YYYY-MM-DD'), 36000, 'Littérature anglaise', 7);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Fontaine', 'Michel', 'michel.fontaine@ecole.fr', '0624252627', TO_DATE('1973-09-25', 'YYYY-MM-DD'), TO_DATE('2003-09-01', 'YYYY-MM-DD'), 65000, 'Philosophie', 7);

INSERT INTO professeurs (nom, prenom, email, telephone, date_naissance, date_embauche, salaire, specialite, departement_id)
VALUES ('Mercier', 'Anne', 'anne.mercier@ecole.fr', '0625262728', TO_DATE('1986-12-30', 'YYYY-MM-DD'), TO_DATE('2016-09-01', 'YYYY-MM-DD'), 44000, 'Histoire', 7);

UPDATE departements SET directeur_id = 2 WHERE nom_departement = 'Informatique';
UPDATE departements SET directeur_id = 8 WHERE nom_departement = 'Mathématiques';
UPDATE departements SET directeur_id = 11 WHERE nom_departement = 'Physique';
UPDATE departements SET directeur_id = 13 WHERE nom_departement = 'Chimie';
UPDATE departements SET directeur_id = 16 WHERE nom_departement = 'Biologie';
UPDATE departements SET directeur_id = 19 WHERE nom_departement = 'Economie';
UPDATE departements SET directeur_id = 24 WHERE nom_departement = 'Lettres';

COMMIT;