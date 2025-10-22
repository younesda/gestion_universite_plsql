create or replace PROCEDURE calculer_moyenne_etudiant(
    p_id_etudiant NUMBER
)
IS
    v_nb_notes NUMBER;
    v_moyenne   NUMBER;
BEGIN
    -- Vérifier si des notes existent pour cet étudiant
    SELECT COUNT(*) 
    INTO v_nb_notes
    FROM inscriptions 
    WHERE etudiant_id = p_id_etudiant
      AND statut <> 'En cours';  -- les guillemets doubles étaient incorrects

    IF v_nb_notes = 0 THEN 
        RAISE_APPLICATION_ERROR(-20001, 'Erreur : aucune note disponible pour cet étudiant.');
    END IF;

    -- Calculer la moyenne
    SELECT AVG(note)
    INTO v_moyenne
    FROM inscriptions 
    WHERE etudiant_id = p_id_etudiant
      AND statut <> 'En cours';

    -- Affichage du résultat
    DBMS_OUTPUT.PUT_LINE('La moyenne générale de l''étudiant ' 
                         || p_id_etudiant || ' est de ' || ROUND(v_moyenne, 2));

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20006, 'Erreur : données manquantes.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20099, 'Erreur inattendue : ' || SQLERRM);
END;
