-- Trouvez les étudiants ayant une moyenne générale supérieure à 14
SELECT 
    e.prenom || ' ' || e.nom AS "Etudiant",
    ROUND(AVG(i.note),2) AS "Moyenne générale"
FROM 
    etudiants e
JOIN 
    inscriptions i 
ON 
    e.etudiant_id = i.etudiant_id
GROUP BY 
    e.prenom, e.nom
HAVING
    AVG(i.note)>14
ORDER BY AVG(i.note) DESC;
    
-- Listez les professeurs qui enseignent dans plus d'un semestre
SELECT 
    p.nom || ' ' || p.prenom AS "Professeur",
    COUNT(DISTINCT e.semestre) AS "Nombre de semestres"
FROM 
    professeurs p
JOIN
    enseignements e 
ON
    p.professeur_id = e.professeur_id
GROUP BY 
    p.professeur_id, p.nom, p.prenom
HAVING
    COUNT(DISTINCT e.semestre) > 1
ORDER BY
    "Nombre de semestres" DESC, p.nom;

-- Affichez les cours avec leur taux de réussite (% d'étudiants ayant validé)
SELECT
    c.nom_cours AS "Cours",
    ROUND(
        (SUM(CASE WHEN(i.statut = 'Validé')THEN 1 ELSE 0 END)*100)/COUNT(i.inscription_id),
        2
    ) AS "Taux de réussite"
FROM 
    cours c 
JOIN
    inscriptions i
ON
    c.cours_id = i.cours_id
GROUP BY 
    c.nom_cours
ORDER BY 
    "Taux de réussite" DESC;
    
-- Trouvez les 3 étudiants avec les meilleures moyennes générales
SELECT 
    e.nom || ' ' || e.prenom AS etudiant,
    e.niveau,
    d.nom_departement,
    COUNT(i.note) AS nb_cours_notes,
    ROUND(AVG(i.note), 2) AS moyenne_generale
FROM 
    etudiants e
JOIN
    inscriptions i ON e.etudiant_id = i.etudiant_id
JOIN
    departements d ON e.departement_id = d.departement_id
WHERE
    i.note IS NOT NULL  
GROUP BY 
    e.etudiant_id, e.nom, e.prenom, e.niveau, d.nom_departement
ORDER BY
    moyenne_generale DESC
FETCH FIRST 3 ROWS ONLY;

-- Listez les départements où le salaire moyen des professeurs dépasse 45000
SELECT 
    d.nom_departement AS "Département",
    ROUND(AVG(p.salaire), 2) AS "Salaire"
FROM
    departements d
JOIN
    professeurs p
ON
    p.departement_id = d.departement_id
GROUP BY 
    d.nom_departement
HAVING 
    AVG(p.salaire) > 45000
ORDER BY
    "Salaire" DESC;   
    
-- Affichez les cours qui ont des prérequis et le nom de ces prérequis
SELECT
    c.nom_cours AS "Cours",
    p.nom_cours AS "Prérequis"
FROM
    cours c 
LEFT JOIN 
    cours p
ON
    c.prerequis_id = p.cours_id
WHERE
    p.prerequis_id IS NOT NULL;
    

-- Trouvez les étudiants inscrits à tous les cours d'un département donné
SELECT 
    e.nom || ' ' || e.prenom AS "Nom Complet"
FROM 
    etudiants e
JOIN 
    inscriptions i ON e.etudiant_id = i.etudiant_id
JOIN 
    cours c ON i.cours_id = c.cours_id
WHERE 
    c.departement_id = 3
GROUP BY 
    e.nom, e.prenom
HAVING 
    COUNT(DISTINCT i.cours_id) = (
        SELECT COUNT(*) 
        FROM cours 
        WHERE departement_id = 3
    );


-- Calculez le taux d'occupation de chaque salle (nombre d'enseignements / capacité)
SELECT
    s.numero_salle AS "Salle",
    ROUND((COUNT(e.enseignement_id) * 100 )/ s.capacite, 2) AS "Taux d'occupation"
FROM
    salles s
LEFT JOIN
    enseignements e ON s.salle_id = e.salle_id
GROUP BY
    s.numero_salle, s.capacite
ORDER BY
    "Taux d'occupation" DESC;

-- Listez les professeurs n'ayant pas d'enseignement au semestre 2
SELECT 
    p.nom ||' '|| p.prenom AS "Professeur"
FROM 
    professeurs p
LEFT JOIN 
    enseignements e
ON 
    p.professeur_id = e.professeur_id 
    AND e.semestre = 2
WHERE 
    e.professeur_id IS NULL;

-- Affichez la répartition des étudiants par niveau et département (tableau croisé)
SELECT
    d.nom_departement AS "Département",
    e.niveau AS "Niveau",
    COUNT(e.etudiant_id) AS "Nombre d'étudiants"
FROM
    etudiants e
JOIN
    departements d ON e.departement_id = d.departement_id
GROUP BY
    d.nom_departement, e.niveau
ORDER BY
    d.nom_departement, e.niveau;

