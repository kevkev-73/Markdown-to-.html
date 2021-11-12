# Convertisseur mardown vers HTML et affichage avec un serveur web

Ce projet docker vise à convertir un fichier au format markdown vers un fichier au format HTML. Le fichier en .html sera ensuite présent dans le dossier data en plus du mardown d'origine.

Une fois converti, vous pourrez accéder à votre page HTML grâce au serveur WEB inclu dans l'application.

## Personnalisation

Afin que l'application puisse correspondre à votre environnement de travail ainsi qu'à vos besoins.
Vous pouvez changer les paramètres du fichier .env. Un fichier .env.sample est présent avec les valeurs par défaut de l'application.

Vous pouvez changer le port coté hôte.


## Premier pas et configuration

Déposez vos fichiers en .md à convertir dans le dossier Data.
/!\ Attention, seuls les fichiers au format .md seront traités. /!\

A l'aide du terminal, déplacez vous ensuite dans le répertoire principal (à la racine).

Démarrez l'application en saisissant la commande :

```

docker-compose up --build

```

L'application va ensuite démarrer.
Vous pourrez ensuite retrouver votre fichier converti dans le répertoire /data

Enfin, accédez au serveur web avec l'adresse http://localhost:(port)/(nom_du_fichier).html

L'application vérifie toutes les 10 secondes si des modifications ont été apportées.
Vous n'avez donc pas besoin de redémarrer l'application à chaque modification.

## Images

Cette application utilise les images debian et apache.

## Auteurs

FRANCOZ-GESLAND Kévin
RICHARD Loïc
