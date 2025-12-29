# Partie 4 : Intégration de Trivy (Scanner de Sécurité IaC)

## 🎯 Objectif
Ajouter une couche de sécurité à la pipeline en utilisant Trivy pour scanner le code Terraform à la recherche d'erreurs de configuration critiques.

## 📝 Consignes
1. **Nouveau Stage :** Ajouter un stage `security_scan` après `linter_scan`.
2. **Installation de Trivy :** Créer un job (`trivy_scan_iac_job` dans `security_scan`) pour installer **Trivy** (en utilisant les commandes `apt-get` appropriées).
3. **Scan IaC :** Exécuter la commande `trivy config` pour scanner le code IaC (répertoire courant).
4. **Condition d'Échec :** Configurer Trivy pour que le job échoue (`--exit-code 1`) si des problèmes de sévérité `MEDIUM`, `HIGH` ou `CRITICAL` sont détectés.

## 💡 Résultat Attendu
Un stage `security_scan` contenant un job qui exécute Trivy et signale les failles de sécurité potentielles.
