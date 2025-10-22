-- SELECT sur toutes les tables
BEGIN
    FOR t IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'GRANT SELECT ON ' || t.table_name || ' TO role_professeur';
    END LOOP;
END;
/

-- INSERT et UPDATE sur INSCRIPTIONS
GRANT INSERT, UPDATE ON INSCRIPTIONS TO role_professeur;

-- SELECT sur les vues
BEGIN
    FOR v IN (SELECT view_name FROM user_views) LOOP
        EXECUTE IMMEDIATE 'GRANT SELECT ON ' || v.view_name || ' TO role_professeur';
    END LOOP;
END;
/
