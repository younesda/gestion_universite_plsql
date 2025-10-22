-- ### Procédure 1 : inscrire_etudiant
-- **Paramètres :** id_etudiant, code_cours, annee, semestre
-- **Fonction :** Inscrire un étudiant à un cours avec vérifications :
-- - L'étudiant existe
-- - Le cours existe
-- - L'étudiant n'est pas déjà inscrit
-- - Les prérequis sont validés
-- - La salle a de la place
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE inscrire_etudiant (
    p_id_etudiant NUMBER,
    p_cours_id NUMBER,
    p_annee NUMBER,
    p_semestre NUMBER
)
IS
    v_existe_etudiant     NUMBER;
    v_existe_cours        NUMBER;
    v_etudiant_inscrit    NUMBER;
    v_capacite            NUMBER;
    v_nombre_eleves       NUMBER;
    v_salle               NUMBER;
    v_prerequis           NUMBER;
    v_note_prerequis      NUMBER;
BEGIN
    -- Vérifier si l'étudiant existe
    SELECT COUNT(*) INTO v_existe_etudiant
    FROM etudiants
    WHERE etudiant_id = p_id_etudiant;

    IF v_existe_etudiant = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Erreur : étudiant inexistant.');
    END IF;

    -- Vérifier si le cours existe
    SELECT COUNT(*) INTO v_existe_cours
    FROM cours
    WHERE cours_id = p_cours_id;

    IF v_existe_cours = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Erreur : cours inexistant.');
    END IF;

    -- Vérifier si l'étudiant est déjà inscrit à ce cours
    SELECT COUNT(*) INTO v_etudiant_inscrit
    FROM inscriptions
    WHERE etudiant_id = p_id_etudiant
      AND cours_id = p_cours_id
      AND annee = p_annee
      AND semestre = p_semestre;

    IF v_etudiant_inscrit > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Erreur : étudiant déjà inscrit à ce cours.');
    END IF;

    -- Récupérer la salle correspondant à ce cours / année / semestre
    BEGIN
        SELECT salle_id INTO v_salle
        FROM enseignements
        WHERE cours_id = p_cours_id
          AND annee = p_annee
          AND semestre = p_semestre;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20007, 'Aucun enseignement trouvé pour ce cours, année et semestre.');
    END;

    -- Vérifier la capacité de la salle
    SELECT capacite INTO v_capacite
    FROM salles
    WHERE salle_id = v_salle;

    SELECT COUNT(*) INTO v_nombre_eleves
    FROM inscriptions i
    JOIN enseignements e ON e.cours_id = i.cours_id
    WHERE e.salle_id = v_salle
      AND e.annee = p_annee
      AND e.semestre = p_semestre;

    IF v_nombre_eleves >= v_capacite THEN
        RAISE_APPLICATION_ERROR(-20004, 'Erreur : salle pleine.');
    END IF;

    -- Vérifier le prérequis éventuel
    SELECT prerequis_id INTO v_prerequis
    FROM cours
    WHERE cours_id = p_cours_id;

    IF v_prerequis IS NOT NULL THEN
        SELECT COUNT(*) INTO v_note_prerequis
        FROM inscriptions
        WHERE etudiant_id = p_id_etudiant
          AND cours_id = v_prerequis
          AND note >= 10;

        IF v_note_prerequis = 0 THEN
            RAISE_APPLICATION_ERROR(-20005, 'Erreur : prérequis non validé.');
        END IF;
    END IF;

    -- Inscrire l'étudiant
    INSERT INTO inscriptions (etudiant_id, cours_id, semestre, annee) VALUES (p_id_etudiant, p_cours_id, p_semestre, p_annee);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('✅ Inscription réussie pour l''étudiant ' || p_id_etudiant || ' au cours ' || p_cours_id);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20006, 'Erreur : données manquantes.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20099, 'Erreur inattendue : ' || SQLERRM);
END;
/

BEGIN
    inscrire_etudiant(2, 4, 2024, 1);
END;
/