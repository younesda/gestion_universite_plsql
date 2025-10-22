-- Listez tous les étudiants avec leur nom, prénom et email
SELECT 
    nom || ' ' || prenom AS "Nom Complet", 
    email 
FROM etudiants;

-- Affichez tous les cours du département 'Informatique'
SELECT 
    * 
FROM 
    cours 
where 
    departement_id = 1;

-- Trouvez tous les professeurs dont le salaire est supérieur à 50000
SELECT 
    *
FROM 
    professeurs 
WHERE 
    salaire > 50000;
    
-- Listez les étudiants inscrits en M1
SELECT 
    *
FROM 
     etudiants 
WHERE 
    niveau = 'M1';
    
-- Affichez les cours qui valent 6 crédits
SELECT 
    *
FROM 
    cours
WHERE 
    credits = 6;
    
-- Trouvez les salles de type 'Amphithéâtre'
SELECT 
    *
FROM
    salles
WHERE 
    TYPE_SALLE = 'Amphithéâtre';

-- Listez les étudiants nés après le 1er janvier 2000
SELECT 
    *
FROM
    etudiants
WHERE 
    date_naissance > TO_DATE('2000-01-01', 'YYYY-MM-DD');

-- Affichez les professeurs embauchés en 2020
SELECT 
    *
FROM
    professeurs
WHERE 
    date_embauche BETWEEN TO_DATE('2020-01-01', 'YYYY-MM-DD') AND  TO_DATE('2019-12-31', 'YYYY-MM-DD')
ORDER BY 
    date_embauche;
    
-- Trouvez les cours sans prérequis
SELECT 
    *
FROM
    cours
WHERE 
    prerequis_id IS NULL;
  
-- Listez les salles ayant une capacité supérieure à 50 places
SELECT 
    *
FROM
    salles
WHERE 
    capacite > 50
ORDER BY 
    capacite DESC;
