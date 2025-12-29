# Partie 2 : Intégration de Terraform et Vérifications de Base

## 🎯 Objectif
Installer l'outil Terraform sur l'executor de la CI et effectuer les premières vérifications de syntaxe.

## 📝 Consignes
1. **Stages :** Créer les stages `setup` et `iac_checks`. Utiliser l'image `ubuntu:latest` pour la plupart des jobs.
2. **Vérification de Répertoire :** Ajouter un job (`check_dir_job` dans `setup`) qui vérifie si le répertoire `/exemple` existe à la racine du projet (`test -d exemple`).
3. **Installation de Terraform :** Créer un job (`install_tf_job` dans `setup`) pour télécharger et installer Terraform (v1.7.5 par exemple). Utiliser `artifacts` pour rendre l'exécutable disponible.
4. **Validation :** Créer un job `tf_validate_job` (dans `iac_checks`) qui exécute `terraform validate`.
5. **Planification :** Créer un job `tf_plan_job` (dans `iac_checks`) qui exécute `terraform init` puis `terraform plan`.
6. **Dépendances :** Utiliser `needs` pour garantir l'ordre d'exécution (par exemple, `tf_validate_job` a besoin de `install_tf_job`).

## 💡 Résultat Attendu
Deux stages (`setup`, `iac_checks`) et quatre jobs qui passent avec succès (installation, vérification du répertoire, validation, planification).
