-- ### Procédure 4 : generer_releve_notes
-- **Paramètres :** id_etudiant, annee, semestre
-- **Fonction :** Afficher le relevé de notes complet d'un étudiant

CREATE OR REPLACE PROCEDURE generer_releve_notes (
    p_id_etudiant number,
    p_annee number,
    p_semestre number
)
IS
    v_existe number;
    v_nom_etudiant varchar2(100);
    v_moyenne number;
BEGIN
    SELECT COUNT(*) INTO v_existe
    FROM inscriptions
    WHERE etudiant_id = p_id_etudiant;
    IF v_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Erreur : Etudiant non inscrit.');
    END IF;
    SELECT prenom || ' ' || nom INTO v_nom_etudiant
    FROM etudiants
    WHERE etudiant_id = p_id_etudiant;
    DBMS_OUTPUT.PUT_LINE('------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('📘 Relevé de notes de : ' || v_nom_etudiant);
    DBMS_OUTPUT.PUT_LINE('Année : ' || p_annee || ' | Semestre : ' || p_semestre);
    DBMS_OUTPUT.PUT_LINE('------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('Cours', 25) || RPAD('Note', 10) || 'Statut');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------');
    FOR rec in (
        SELECT c.nom_cours, i.note,i.statut
        FROM inscriptions i
        JOIN cours c on c.cours_id = i.cours_id
        WHERE etudiant_id = p_id_etudiant 
        AND annee = p_annee
        AND semestre = p_semestre
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(RPAD(rec.nom_cours, 25) ||
                             RPAD(NVL(TO_CHAR(rec.note), '-'), 10) ||
                             NVL(rec.statut, 'Non défini'));
    END LOOP;
    SELECT AVG(NOTE) INTO v_moyenne
    FROM inscriptions 
    WHERE etudiant_id = p_id_etudiant 
        AND annee = p_annee
        AND semestre = p_semestre
        AND note IS NOT NULL;
    IF v_moyenne IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('🧮 Moyenne générale : ' || ROUND(v_moyenne, 2));
    ELSE
        DBMS_OUTPUT.PUT_LINE('Aucune note enregistrée pour ce semestre.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'Erreur : aucune donnée trouvée.');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20099, 'Erreur inattendue : ' || SQLERRM);
END;
/
BEGIN 
    generer_releve_notes(2,2024,1);
END;