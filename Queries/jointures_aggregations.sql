--Affichez chaque étudiant avec son département (nom du département)
SELECT 
    e.nom || ' ' || e.prenom AS "Nom Complet",
    d.nom_departement
FROM
    etudiants e
JOIN 
    departements d 
ON
    d.departement_id = e.departement_id;

-- Listez tous les cours avec le nom du professeur qui les enseigne
SELECT 
    c.NOM_COURS AS "COURS",
    p.nom || ' ' || p.prenom AS "Nom du professeur"
FROM
    enseignements e
JOIN
    professeurs p
ON p.professeur_id = e.professeur_id
JOIN
    cours c
ON c.cours_id = e.cours_id;

-- Comptez le nombre d'étudiants par département
SELECT
    d.nom_departement AS "Departement",
    count(*) AS "Nombre d'étudiants"
FROM
    etudiants e
JOIN 
    departements d
ON
    e.departement_id = d.departement_id
GROUP BY 
    d.nom_departement;
    
-- Calculez la moyenne des notes par cours
SELECT 
    c.nom_cours AS "Cours",
    ROUND(AVG(i.note),2) AS "Note"
FROM
    inscriptions i
JOIN 
    cours c 
ON 
    c.cours_id = i.cours_id
GROUP BY
    c.nom_cours;

-- Trouvez le salaire moyen par département
SELECT
    d.nom_departement AS "Departement",
    ROUND(AVG(p.salaire),2) AS "Salaire" 
FROM
    professeurs p 
JOIN
    departements d 
ON 
    d.departement_id = p.departement_id
GROUP BY
    d.nom_departement;

-- Affichez le nombre de cours enseignés par chaque professeur
SELECT 
    p.nom || ' ' || p.prenom AS "Professeur",
    COUNT(*) AS "Cours"
FROM
    enseignements e
JOIN 
    professeurs p 
ON
    e.professeur_id = p.professeur_id
GROUP BY 
    p.nom, p.prenom;

-- Listez les étudiants avec le nombre de cours auxquels ils sont inscrits
SELECT 
    e.nom || ' ' || e.prenom AS "Etudiant",
    COUNT(*) AS "Cours"
FROM
    inscriptions i
JOIN 
    etudiants e
ON
    e.etudiant_id = i.etudiant_id
GROUP BY 
    e.nom, e.prenom;

-- Trouvez les cours qui n'ont aucun étudiant inscrit
SELECT
    c.nom_cours
FROM 
    inscriptions i
LEFT JOIN 
    cours c
ON
    c.cours_id = i.cours_id
WHERE
    i.etudiant_id is NULL;
    
-- Affichez les départements avec leur budget total et nombre de professeurs
SELECT 
    d.nom_departement AS "Departement",
    d.budget_annuel AS "Budget total",
    count(*) AS "Professeurs"
FROM 
    departements d 
JOIN 
    professeurs p
ON 
    d.departement_id = p.departement_id
GROUP BY
    d.nom_departement,d.budget_annuel;

-- Calculez le nombre total de crédits obtenus par chaque étudiant (notes ≥ 10)
SELECT 
    e.nom || ' ' || e.prenom AS "Etudiant",
    SUM(c.credits) AS "Crédit"
FROM
    etudiants e
JOIN 
    inscriptions i
ON
    e.etudiant_id = i.etudiant_id
JOIN 
    cours c
ON
    c.cours_id = i.cours_id
WHERE
    i.note >= 10
GROUP BY
    e.nom, e.prenom;