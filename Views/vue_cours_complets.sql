-- Affiche les cours avec : nom du cours, professeur, nombre d'inscrits, moyenne de la classe
CREATE OR REPLACE VIEW vue_cours_complets AS
    SELECT 
        c.nom_cours AS "Cours",
        p.prenom ||' '||p.nom AS "Professeur",
        COUNT(i.inscription_id) AS "Nombre d'inscrits",
        ROUND(AVG(i.note),2) AS "Moyenne de la classe"
    FROM
        cours c 
    JOIN 
        enseignements e
    ON 
        e.cours_id = c.cours_id
    JOIN 
        inscriptions i
    ON 
        i.cours_id = c.cours_id
    JOIN 
        professeurs p
    ON 
        e.professeur_id = p.professeur_id
    GROUP BY 
        c.nom_cours,p.prenom,p.nom;
        
SELECT * FROM vue_cours_complets;
        