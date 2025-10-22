CREATE INDEX idx_prof_dept ON professeurs(departement_id);
CREATE INDEX idx_etu_dept ON etudiants(departement_id);
CREATE INDEX idx_etu_niveau ON etudiants(niveau);
CREATE INDEX idx_cours_dept ON cours(departement_id);
CREATE INDEX idx_cours_prerequis ON cours(prerequis_id);
CREATE INDEX idx_ens_prof ON enseignements(professeur_id);
CREATE INDEX idx_ens_cours ON enseignements(cours_id);
CREATE INDEX idx_ens_salle ON enseignements(salle_id);
CREATE INDEX idx_ens_annee_sem ON enseignements(annee, semestre);
CREATE INDEX idx_insc_etu ON inscriptions(etudiant_id);
CREATE INDEX idx_insc_cours ON inscriptions(cours_id);
CREATE INDEX idx_insc_annee_sem ON inscriptions(annee, semestre);
CREATE INDEX idx_insc_statut ON inscriptions(statut);
CREATE INDEX idx_dept_directeur ON departements(directeur_id);

COMMIT;