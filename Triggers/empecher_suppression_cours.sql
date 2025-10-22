-- ### Trigger 4 : empecher_suppression_cours
-- **Action :** BEFORE DELETE sur COURS
-- **Fonction :** Empêcher la suppression si des étudiants sont inscrits

CREATE OR REPLACE TRIGGER empecher_suppression_cours
BEFORE DELETE ON cours
FOR EACH ROW
DECLARE 
    v_nb_etu number;
BEGIN
    SELECT COUNT(*) INTO v_nb_etu FROM inscriptions 
    WHERE cours_id = :OLD.cours_id;
    IF v_nb_etu > 0 THEN
        RAISE_APPLICATION_ERROR(
            -20011,
            'Suppression impossible : des étudiants sont encore inscrits à ce cours.'
        );
    END IF;
END;