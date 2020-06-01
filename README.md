# Administration reseaux - Projet
Projet de second semestre du BAC2 - 2019-2020

***

# Déployer le projet

* En local : cloner le projet puis utiliser le script Make.sh via la commande ***./Make.sh***
  * Pour build le résolveur DNS: ***./Make.sh --build-resolveur***
  * Pour build le SOA externe : ***./Make.sh --build-soa-public***
  * Pour build le site www : ***./Make.sh --build-www***
  * Pour build le site b2b : ***./Make.sh --build-b2b***
  * Pour build la database : ***./Make.sh --build-database***
  * Pour build le serveur reverse-proxy : ***./Make.sh --build-proxy***
  * Pour build le site intranet : ***./Make.sh --build-intranet***
  * Pour build le poste ayant des outils pour vérifier le DNS et faire des pings : ***./Make.sh --build-dnsutils***
  * Pour build le poste ayant des outils pour vérifier le Web : ***./Make.sh --build-host-web***
  * Pour build le poste ayant des outils pour vérifier le Mail : ***./Make.sh --build-host-mail***
* En ligne : via Dockerhub
  * Pour avoir l'image du résolveur DNS: ***docker pull diomenios/administration_reseau:resolveur***
  * Pour avoir l'image du SOA externe: ***docker pull diomenios/administration_reseau:soa-public***
  * Pour avoir l'image du site www: ***docker pull diomenios/administration_reseau:www***
  * Pour avoir l'image du site b2b: ***docker pull diomenios/administration_reseau:b2b***
  * Pour avoir l'image de la database: ***docker pull diomenios/administration_reseau:database***
  * Pour avoir l'image du serveur reverse-proxy: ***docker pull diomenios/administration_reseau:proxy***
  * Pour avoir l'image du site intranet: ***docker pull diomenios/administration_reseau:intranet***
  * Pour avoir l'image du poste ayant des outils pour vérifier le DNS et faire des pings : ***docker pull diomenios/administration_reseau:dnsutils***
  * Pour avoir l'image du poste ayant des outils pour vérifier le Web : ***docker pull diomenios/administration_reseau:host-web***
  * Pour avoir l'image du poste ayant des outils pour vérifier le Mail : ***docker pull diomenios/administration_reseau:host-mail***

***

# Auteurs
*Groupe* : **2TL2-3**
  - Louis Arys - [@Diomenios](https://github.com/Diomenios)
  - Martin Perdeans - [@Martin-95](https://github.com/Martinp-95)
  - Jean-Michael Tang - [@jeanmtang](https://github.com/jeanmtang)
  - Geoffrey Brogniet - [@BrognietGeoffrey](https://github.com/BrognietGeoffrey)
  ***
