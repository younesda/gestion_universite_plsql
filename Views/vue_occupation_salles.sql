-- Affiche pour chaque salle : numéro, bâtiment, capacité, nombre d'enseignements, taux d'utilisation
CREATE OR REPLACE VIEW vue_occupation_salles AS
    SELECT 
        s.numero_salle AS "Salle",
        s.batiment AS "Batiment",
        s.capacite AS "Capacité",
        COUNT(e.enseignement_id) AS "Nomnre d'enseignements",
        ROUND(((COUNT(e.enseignement_id)*100)/s.capacite),2) AS "Taux d'utilisation"
    FROM
        salles s
    JOIN 
        enseignements e
    ON 
        e.salle_id = s.salle_id
    GROUP BY
        s.numero_salle,s.batiment,s.capacite;
SELECT * FROM vue_occupation_salles;