SET DEFINE OFF;
SET SCAN OFF;

CREATE TABLE departements (
    departement_id NUMBER PRIMARY KEY,
    nom_departement VARCHAR2(50) NOT NULL UNIQUE,
    batiment VARCHAR2(20),
    budget_annuel NUMBER(12,2) CHECK (budget_annuel >= 0),
    directeur_id NUMBER
);

CREATE TABLE professeurs (
    professeur_id NUMBER PRIMARY KEY,
    nom VARCHAR2(50) NOT NULL,
    prenom VARCHAR2(50) NOT NULL,
    date_naissance DATE,
    email VARCHAR2(100) NOT NULL UNIQUE,
    telephone VARCHAR2(20),
    date_embauche DATE,
    salaire NUMBER(10,2) CHECK (salaire > 0),
    specialite VARCHAR2(100),
    departement_id NUMBER,
    CONSTRAINT chk_prof_dates CHECK (
        date_embauche IS NULL OR 
        date_naissance IS NULL OR 
        date_embauche > date_naissance
    ),
    CONSTRAINT fk_prof_dept 
        FOREIGN KEY (departement_id) 
        REFERENCES departements(departement_id)
        ON DELETE SET NULL
);

CREATE TABLE etudiants (
    etudiant_id NUMBER PRIMARY KEY,
    nom VARCHAR2(50) NOT NULL,
    prenom VARCHAR2(50) NOT NULL,
    date_naissance DATE,
    email VARCHAR2(100) NOT NULL UNIQUE,
    telephone VARCHAR2(20),
    rue VARCHAR2(100),
    ville VARCHAR2(50),
    code_postal VARCHAR2(10),
    pays VARCHAR2(50) DEFAULT 'France',
    date_inscription DATE DEFAULT SYSDATE,
    niveau VARCHAR2(5) CHECK (niveau IN ('L1', 'L2', 'L3', 'M1', 'M2')),
    departement_id NUMBER,
    CONSTRAINT chk_etu_dates CHECK (
        date_inscription IS NULL OR 
        date_naissance IS NULL OR 
        date_inscription > date_naissance
    ),
    CONSTRAINT fk_etu_dept 
        FOREIGN KEY (departement_id) 
        REFERENCES departements(departement_id)
        ON DELETE SET NULL
);

CREATE TABLE salles (
    salle_id NUMBER PRIMARY KEY,
    numero_salle VARCHAR2(10) NOT NULL UNIQUE,
    batiment VARCHAR2(20),
    capacite NUMBER CHECK (capacite > 0),
    type_salle VARCHAR2(20) CHECK (
        type_salle IN ('Amphithéâtre', 'Salle de TP', 'Salle classique', 'Laboratoire')
    ),
    equipements VARCHAR2(200)
);

CREATE TABLE cours (
    cours_id NUMBER PRIMARY KEY,
    code_cours VARCHAR2(10) NOT NULL UNIQUE,
    nom_cours VARCHAR2(100) NOT NULL,
    credits NUMBER CHECK (credits > 0),
    heures NUMBER CHECK (heures > 0),
    departement_id NUMBER NOT NULL,
    prerequis_id NUMBER,
    CONSTRAINT fk_cours_dept 
        FOREIGN KEY (departement_id) 
        REFERENCES departements(departement_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_cours_prerequis 
        FOREIGN KEY (prerequis_id) 
        REFERENCES cours(cours_id)
        ON DELETE SET NULL
);

CREATE TABLE enseignements (
    enseignement_id NUMBER PRIMARY KEY,
    professeur_id NUMBER NOT NULL,
    cours_id NUMBER NOT NULL,
    semestre NUMBER CHECK (semestre IN (1, 2)),
    annee NUMBER CHECK (annee >= 2020 AND annee <= 2100),
    salle_id NUMBER,
    CONSTRAINT uk_enseignement UNIQUE (professeur_id, cours_id, semestre, annee),
    CONSTRAINT fk_ens_prof 
        FOREIGN KEY (professeur_id) 
        REFERENCES professeurs(professeur_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_ens_cours 
        FOREIGN KEY (cours_id) 
        REFERENCES cours(cours_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_ens_salle 
        FOREIGN KEY (salle_id) 
        REFERENCES salles(salle_id)
        ON DELETE SET NULL
);

CREATE TABLE inscriptions (
    inscription_id NUMBER PRIMARY KEY,
    etudiant_id NUMBER NOT NULL,
    cours_id NUMBER NOT NULL,
    semestre NUMBER CHECK (semestre IN (1, 2)),
    annee NUMBER CHECK (annee >= 2020 AND annee <= 2100),
    note NUMBER(4,2) CHECK (note IS NULL OR (note >= 0 AND note <= 20)),
    statut VARCHAR2(20) DEFAULT 'En cours' CHECK (
        statut IN ('En cours', 'Validé', 'Échoué', 'Abandonné')
    ),
    CONSTRAINT uk_inscription UNIQUE (etudiant_id, cours_id, semestre, annee),
    CONSTRAINT fk_insc_etu 
        FOREIGN KEY (etudiant_id) 
        REFERENCES etudiants(etudiant_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_insc_cours 
        FOREIGN KEY (cours_id) 
        REFERENCES cours(cours_id)
        ON DELETE CASCADE
);

ALTER TABLE departements
ADD CONSTRAINT fk_dept_directeur 
    FOREIGN KEY (directeur_id) 
    REFERENCES professeurs(professeur_id)
    ON DELETE SET NULL;

COMMIT;