# Partie 5 : Documentation Automatique avec Terraform-Docs

## 🎯 Objectif
Automatiser la génération de la documentation du module (tables des variables, outputs) et imposer qu'elle soit à jour avant la fusion sur la branche principale (`main`).

## 📝 Consignes
1. **Nouveau Stage :** Ajouter un stage `documentation` après `security_scan`.
2. **Installation de Terraform-Docs :** Créer un job (`install_tf_docs_job` dans `setup`) pour installer **terraform-docs** (v0.17.0).
3. **Vérification de la Documentation :** Créer un job `check_docs_diff_job` (dans `documentation`) qui :
    * S'exécute **uniquement lors d'une Merge Request** ciblant la branche `main` (`rules`).
    * Exécute `terraform-docs markdown table --output-mode check .` pour vérifier si le `README.md` est à jour. Le job doit échouer s'il y a un décalage.
4. **Génération Automatique :** Créer un job `generate_docs_job` (dans `documentation`) qui :
    * Est configuré pour être **lancé manuellement** (`when: manual`).
    * S'exécute **uniquement sur la branche `main`**.
    * Génère la documentation (`--output-mode inject`) et la pousse sur le dépôt si elle a changé (nécessite l'utilisation de `CI_JOB_TOKEN` pour le `git push`).

## 💡 Résultat Attendu
Cinq stages complets. Le job de vérification de documentation s'active uniquement lors d'une MR et le job de génération est disponible manuellement sur `main`.
