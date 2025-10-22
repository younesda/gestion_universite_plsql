-- ### Trigger 2 : maj_budget_embauche
-- **Action :** AFTER INSERT sur PROFESSEURS
-- **Fonction :** Déduire le salaire du nouveau professeur du budget du département

CREATE OR REPLACE TRIGGER maj_budget_embauche
AFTER INSERT ON professeurs
FOR EACH ROW
DECLARE 
    v_budget  NUMBER;
BEGIN 
    SELECT budget_annuel 
    INTO v_budget
    FROM departements
    WHERE departement_id = :NEW.departement_id;

    IF :NEW.salaire > v_budget THEN
        RAISE_APPLICATION_ERROR(-20010, 'Erreur : Budget insuffisant pour embaucher ce professeur.');
    END IF;

    UPDATE departements
    SET budget_annuel = budget_annuel - :NEW.salaire
    WHERE departement_id = :NEW.departement_id;
END;
/
