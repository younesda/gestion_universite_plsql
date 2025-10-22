-- ### Trigger 1 : verifier_capacite_salle
-- **Action :** BEFORE INSERT sur ENSEIGNEMENTS
-- **Fonction :** Vérifier que la salle a assez de places pour le nombre d'étudiants potentiels

CREATE OR REPLACE TRIGGER verifier_capacite_salle
BEFORE INSERT ON enseignements
FOR EACH ROW 
DECLARE 
    v_capacite_salle number;
    v_nombre_etudiants number;
BEGIN 
    SELECT capacite into v_capacite_salle
    FROM salles
    WHERE salle_id = :NEW.salle_id;
    SELECT COUNT(*) INTO v_nombre_etudiants 
    FROM inscriptions i
    JOIN enseignements e on e.cours_id = i.cours_id
    WHERE salle_id = :NEW.salle_id
    AND e.annee = :NEW.annee
    AND e.semestre = :NEW.semestre;
    IF v_nombre_etudiants >= v_capacite_salle THEN
        RAISE_APPLICATION_ERROR(-20010, 'Erreur : capacité maximale de la salle atteinte (' || v_capacite_salle || ' places).');
    END IF;
END;