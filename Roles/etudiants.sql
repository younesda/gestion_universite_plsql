-- SELECT sur certaines tables
GRANT SELECT ON COURS TO role_etudiant;
GRANT SELECT ON DEPARTEMENTS TO role_etudiant;
GRANT SELECT ON PROFESSEURS TO role_etudiant;

-- SELECT sur vue_resultats_etudiants
GRANT SELECT ON vue_resultats_etudiants TO role_etudiant;
