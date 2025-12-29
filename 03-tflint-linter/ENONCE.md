# Partie 3 : Intégration d'un Linter (TFLINT)

## 🎯 Objectif
Améliorer la qualité du code en intégrant un linter spécifique à Terraform pour vérifier les conventions et les bonnes pratiques.

## 📝 Consignes
1. **Nouveau Stage :** Ajouter un stage `linter_scan` après `iac_checks`.
2. **Installation de TFLint :** Créer un job (`install_tflint_job` dans `setup`) pour télécharger, installer **TFLint** (v0.51.0 par exemple) et le rendre disponible via `artifacts`.
3. **Exécution du Linter :** Créer un job `tflint_check_job` (dans `linter_scan`) qui :
    * Initialise TFLint (`tflint --init`).
    * Exécute le linter sur le répertoire courant (`tflint`).

## 💡 Résultat Attendu
Un stage `linter_scan` contenant un job qui exécute TFLint avec succès.
