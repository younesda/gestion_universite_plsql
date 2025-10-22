CREATE OR REPLACE TRIGGER trg_departement_bi
BEFORE INSERT ON departements
FOR EACH ROW
BEGIN
    IF :NEW.departement_id IS NULL THEN
        SELECT seq_departement.NEXTVAL INTO :NEW.departement_id FROM dual;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_professeur_bi
BEFORE INSERT ON professeurs
FOR EACH ROW
BEGIN
    IF :NEW.professeur_id IS NULL THEN
        SELECT seq_professeur.NEXTVAL INTO :NEW.professeur_id FROM dual;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_etudiant_bi
BEFORE INSERT ON etudiants
FOR EACH ROW
BEGIN
    IF :NEW.etudiant_id IS NULL THEN
        SELECT seq_etudiant.NEXTVAL INTO :NEW.etudiant_id FROM dual;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_cours_bi
BEFORE INSERT ON cours
FOR EACH ROW
BEGIN
    IF :NEW.cours_id IS NULL THEN
        SELECT seq_cours.NEXTVAL INTO :NEW.cours_id FROM dual;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_salle_bi
BEFORE INSERT ON salles
FOR EACH ROW
BEGIN
    IF :NEW.salle_id IS NULL THEN
        SELECT seq_salle.NEXTVAL INTO :NEW.salle_id FROM dual;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_enseignement_bi
BEFORE INSERT ON enseignements
FOR EACH ROW
BEGIN
    IF :NEW.enseignement_id IS NULL THEN
        SELECT seq_enseignement.NEXTVAL INTO :NEW.enseignement_id FROM dual;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_inscription_bi
BEFORE INSERT ON inscriptions
FOR EACH ROW
BEGIN
    IF :NEW.inscription_id IS NULL THEN
        SELECT seq_inscription.NEXTVAL INTO :NEW.inscription_id FROM dual;
    END IF;
END;
/

COMMIT;