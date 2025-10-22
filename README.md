🎓 Système de Gestion d’une École (Projet SQL Complet)
📘 Description du projet

Ce projet a pour objectif de concevoir et implémenter une base de données relationnelle complète pour la gestion d’une école (lycée ou université).
Il couvre l’ensemble du cycle de vie d’un projet SQL : de la conception du modèle de données jusqu’à l’optimisation et la sécurisation du système.

Le projet met en œuvre les notions avancées de modélisation, contraintes d’intégrité, procédures stockées, triggers, vues, et gestion des rôles.
Il constitue une base solide pour tout système académique (gestion des étudiants, professeurs, cours, inscriptions, notes, etc.).

🎯 Objectifs pédagogiques

Concevoir un modèle de données complet et normalisé

Maîtriser les contraintes d’intégrité et les relations entre tables

Manipuler des requêtes SQL complexes (jointures, agrégations, sous-requêtes)

Créer des vues, triggers et procédures stockées

Optimiser les performances avec des index et plans d’exécution

Gérer la sécurité et les droits utilisateurs via des rôles SQL

🧩 Structure du projet

Le projet est organisé en plusieurs phases correspondant à un apprentissage progressif :

Phase	Contenu
1	Conception du modèle relationnel (Schéma ER)
2	Création des tables, contraintes et séquences
3	Insertion d’un jeu de données réaliste
4	30 requêtes SQL (simples, jointures, agrégations, complexes)
5	Création de vues utiles pour l’analyse
6	Procédures stockées (inscription, moyenne, relevé de notes, etc.)
7	Triggers avancés (historisation, budget, contraintes de salle)
8	Optimisation des performances
9	Sécurité et gestion des rôles
10-11	Tests, validation et documentation
🏫 Schéma conceptuel

Les principales entités du système :

DEPARTEMENTS (ex: Informatique, Mathématiques, Physique)

PROFESSEURS (nom, salaire, spécialité, département)

ETUDIANTS (niveaux, adresses, date d’inscription)

COURS (crédits, prérequis, département)

ENSEIGNEMENTS (association professeur-cours-salle-semestre)

INSCRIPTIONS (association étudiant-cours, note, statut)

SALLES (type, capacité, équipements)

🧠 Exemples de fonctionnalités
🔹 Requêtes SQL

Moyenne des notes par cours

Taux de réussite par département

Liste des étudiants avec leur moyenne générale

Professeurs sans enseignement au semestre 2

🔹 Vues créées

vue_resultats_etudiants : résumé des performances des étudiants

vue_cours_complets : vue analytique des cours et moyennes

vue_occupation_salles : taux d’utilisation des salles

🔹 Procédures stockées

inscrire_etudiant() : inscription avec vérifications

calculer_moyenne_etudiant() : calcul automatique de la moyenne

attribuer_note() : attribution et mise à jour du statut

generer_releve_notes() : génération d’un relevé complet

🔹 Triggers

verifier_capacite_salle : contrôle de la capacité avant enseignement

maj_budget_embauche : mise à jour du budget lors d’une embauche

historiser_notes : historisation automatique des notes modifiées

empecher_suppression_cours : protection des cours inscrits

⚙️ Technologies utilisées

SGBD : Oracle Database 21c

Langage : SQL / PL/SQL

Outils : SQL Developer

Environnement : Windows 

🧪 Tests réalisés

Tests d’intégrité référentielle

Tests des contraintes (CHECK, UNIQUE, NOT NULL, FK)

Tests unitaires sur les procédures et triggers

Tests de charge et d’optimisation (EXPLAIN PLAN)

Vérification des droits utilisateurs

🧠 Améliorations possibles (Bonus)

Gestion des emplois du temps (table SEANCES)

Système d’évaluations pondérées (projets, TP, examens)

Gestion des absences et alertes automatiques

Tableaux de bord statistiques sur la performance des départements

🧑‍💻 Auteur

Younes Hachami
🎓 Master Big Data & Data Stratégie | Data Analyst @ Sen’Eau
💼 Compétences : SQL, PL/SQL, Power BI, Data Modeling, ETL, Python

📧 Contact : [LinkedIn](https://www.linkedin.com/in/younes-hachami/)
 | youneshachami9@gmail.com

🏁 Licence

Ce projet est distribué sous licence MIT — Vous êtes libre de l’utiliser, le modifier et le partager à des fins éducatives.
