INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF101', 'Introduction à la programmation', 6, 60, 1, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF102', 'Algorithmique', 6, 60, 1, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF201', 'Structures de données', 6, 60, 1, 1);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF202', 'Bases de données', 6, 60, 1, 1);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF301', 'Développement Web', 6, 60, 1, 4);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF302', 'Réseaux informatiques', 6, 60, 1, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF401', 'Intelligence Artificielle', 6, 60, 1, 3);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('INF402', 'Sécurité informatique', 6, 60, 1, 6);

-- COURS MATHÉMATIQUES (departement_id = 2)
INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('MAT101', 'Algèbre linéaire', 6, 60, 2, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('MAT102', 'Analyse I', 6, 60, 2, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('MAT201', 'Analyse II', 6, 60, 2, 10);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('MAT202', 'Probabilités', 6, 60, 2, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('MAT301', 'Statistiques', 6, 60, 2, 12);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('MAT302', 'Équations différentielles', 6, 60, 2, 11);

-- COURS PHYSIQUE (departement_id = 3)
INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('PHY101', 'Mécanique classique', 6, 60, 3, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('PHY102', 'Électromagnétisme', 6, 60, 3, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('PHY201', 'Thermodynamique', 6, 60, 3, 15);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('PHY202', 'Optique', 6, 60, 3, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('PHY301', 'Mécanique quantique', 6, 60, 3, 15);

-- COURS CHIMIE (departement_id = 4)
INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('CHI101', 'Chimie générale', 6, 60, 4, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('CHI102', 'Chimie organique I', 6, 60, 4, 20);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('CHI201', 'Chimie organique II', 6, 60, 4, 21);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('CHI202', 'Chimie analytique', 6, 60, 4, 20);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('CHI301', 'Biochimie', 6, 60, 4, 22);

-- COURS BIOLOGIE (departement_id = 5)
INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('BIO101', 'Biologie cellulaire', 6, 60, 5, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('BIO102', 'Génétique', 6, 60, 5, 25);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('BIO201', 'Microbiologie', 6, 60, 5, 25);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('BIO202', 'Écologie', 6, 60, 5, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('BIO301', 'Biologie moléculaire', 6, 60, 5, 26);

-- COURS ÉCONOMIE (departement_id = 6)
INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('ECO101', 'Microéconomie', 6, 60, 6, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('ECO102', 'Macroéconomie', 6, 60, 6, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('ECO201', 'Finance', 6, 60, 6, 30);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('ECO202', 'Marketing', 6, 60, 6, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('ECO301', 'Économétrie', 6, 60, 6, 31);

-- COURS LETTRES (departement_id = 7)
INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('LET101', 'Littérature française classique', 6, 60, 7, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('LET102', 'Linguistique générale', 6, 60, 7, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('LET201', 'Littérature française moderne', 6, 60, 7, 35);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('LET202', 'Littérature anglaise', 6, 60, 7, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('LET301', 'Philosophie', 6, 60, 7, NULL);

INSERT INTO cours (code_cours, nom_cours, credits, heures, departement_id, prerequis_id)
VALUES ('LET302', 'Histoire contemporaine', 6, 60, 7, NULL);

COMMIT;