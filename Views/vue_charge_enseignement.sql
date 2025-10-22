-- Affiche pour chaque professeur : nom, prénom, département, nombre de cours enseignés, total d'heures
CREATE OR REPLACE VIEW vue_charge_enseignement AS
    SELECT 
        p.prenom || ' ' || p.nom AS "Professeur",
        d.nom_departement AS "Departement",
        COUNT(e.enseignement_id) AS "Nombre de cours enseignés",
        SUM(c.heures) AS "VHE"
    FROM
        professeurs p 
    JOIN 
        departements d 
    ON 
        d.departement_id = p.departement_id 
    JOIN 
        enseignements e 
    ON 
        e.professeur_id = p.professeur_id 
    JOIN 
        cours c 
    ON 
        c.cours_id = e.cours_id
    GROUP BY
        p.prenom,p.nom,d.nom_departement;
        
SELECT * FROM vue_charge_enseignement;