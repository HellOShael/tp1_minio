## TP Cloud 1 : Introduction au Cloud avec OpenTofu et MinIO 

1 - Installation des outils donnés dans le TP (OpenTofu, MinIO, AWS Cli)

2 - Lancement du serveur Minio + configuration de base + création du dossier du TP + premier déploiement avec un simple main.tf (tofu init, tofu plan, tofu apply)

3 - Transformation en site web statique en suivant les consignes du TP : création de index.html et style.css, puis adaptation de main.tf pour créer un bucket “webbucket” et y envoyer les fichiers

4 - Création du fichier variables.tf spécifiant les variables minio_server, minio_user et bucket_name en default + on prépare minio_password qu’on déclare en information sensible (on ne le spécifie pas dans le fichier de variables mais dans un autre fichier secret qu’on déclare dans le .gitignore → “secret.auto.tfvars”) 

5 - Modification du main.tf pour qu’il utilise les variables spécifiées dans le variables.tf → on remplace les anciennes valeurs claires

6 - Création du fichier de secrets “secret.auto.tfvars” pour fournir la valeur de minio_password sans la commit, on l’ajoute au .gitignore

7 - Création du fichier outputs.tf pour afficher/stocker des informations utiles : adresse du serveur MinIO utilisé (minio_server) + nom du bucket (bucket_name) + URL d’accès à index.html en local (site_theorique_url)

8 - Optimisation des ACL : passage du bucket en “private” pour limiter l’accès aux fichiers uniquement aux utilisateurs authentifiés avec Minio ⇒ réduction de la surface d’exposition

9 - Validation du “cycle complet d’infrastructure as code”,en détruisant l’infrastructure puis en la reconstruisant avec tofu destroy et tofu apply ⇒ reconstruction du bucket et déploiement du site réussi + check avec tofu plan qui n'affiche pas de changements


