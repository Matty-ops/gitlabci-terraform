# Travaux Pratiques : Intégration Continue (CI/CD) avec GitLab et Terraform

## 🚀 Objectif du Module

Ce module de TP vise à vous fournir une expérience pratique et progressive dans la construction de pipelines d'Intégration Continue (CI) robustes avec GitLab CI, spécifiquement adaptées à l'Infrastructure-as-Code (IaC) utilisant **Terraform**.

À la fin de ce TP, vous serez capable de :

1. Définir des stages et des jobs dans un fichier `.gitlab-ci.yml`.

2. Gérer les dépendances entre les jobs (`needs`).

3. Intégrer et configurer des outils IaC courants (Terraform, TFLint, Trivy).

4. Mettre en place des contrôles de qualité, de sécurité et de documentation automatisée.

## 🗺️ Progression des TP

Chaque partie représente une avancée dans la complexité et les fonctionnalités de la pipeline. Le fichier `.gitlab-ci.yml` est mis à jour de manière incrémentale.

| **Partie** | **Nom du Dossier** | **Objectif Principal** | **Outils Introduits** | 
| :--- | :--- | :--- | :--- | 
| **Partie 1** | `01-hello-world` | Validation de l'environnement de la CI. | `echo` | 
| **Partie 2** | `02-terraform-base` | Installation de Terraform et validation des commandes de base. | **Terraform** (`validate`, `init`, `plan`) | 
| **Partie 3** | `03-tflint-linter` | Intégration d'un linter pour la qualité et le style du code Terraform. | **TFLint** | 
| **Partie 4** | `04-trivy-security` | Ajout d'un scan de sécurité pour l'IaC. | **Trivy** | 
| **Partie 5** | `05-terraform-docs` | Automatisation de la documentation et déclenchement conditionnel. | **terraform-docs** | 

## 📂 Contenu de l'Arborescence du Projet

Vous trouverez l'énoncé détaillé et le fichier `.gitlab-ci.yml` attendu pour chaque partie dans les dossiers correspondants.

**Commencez par le dossier `01-hello-world` !**
