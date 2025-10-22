-- Affiche pour chaque étudiant : nom, prénom, nombre de cours, moyenne générale, nombre de crédits validés
CREATE OR REPLACE VIEW vue_resultats_etudiants AS
SELECT 
    e.prenom || ' ' || e.nom AS "Etudiant",
    COUNT(i.cours_id) AS "COURS",
    ROUND(AVG(i.note),2) AS "Moyenne générale",
    SUM(CASE WHEN i.note >= 10 THEN c.credits ELSE 0 END) AS "Crédits validés"
FROM 
    etudiants e
JOIN
    inscriptions i 
    ON e.etudiant_id = i.etudiant_id
JOIN 
    cours c 
    ON c.cours_id = i.cours_id
-- filtre les résultats par utilisateur connecté
-- WHERE 
    -- UPPER(e.login) = UPPER(USER)
GROUP BY
    e.prenom, e.nom;
/
SELECT * FROM vue_resultats_etudiants;