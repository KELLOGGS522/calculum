#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{ddb9053b-7207-4b86-80b1-fa387c95b5bf}
◊define-meta[title]{Rencontre #19: Géométrie}
◊define-meta[date]{2023-04-05T17:00:00-05:00}
◊define-meta[summary]{Nous étudierons cette semaine une série de problèmes de géométrie.}
◊define-meta[author]{Mattéo Delabre}

Nous étudierons cette semaine une série de problèmes de géométrie.
Voyez aussi notre ◊in-link["posts/2/#problems"]{précédente série de problèmes de géométrie}, étudiés lors de la première rencontre du club.

◊link-h2["resources"]{Ressources}

Voici quelques ressources qui pourront vous aider pour les problèmes.

◊ul{
    ◊li{Chapitres 12 et 13 de ◊out-link["https://umontreal.on.worldcat.org/oclc/945921847"]{“Programmation efficace”} par C. Dürr et J.-J. Vie.}
    ◊li{Chapitre 13 de ◊out-link["https://umontreal.on.worldcat.org/oclc/1154565111"]{“Guide to Competitive Programming”} par A. Laaksonen.}
    ◊li{Chapitre 7 de ◊out-link["https://cpbook.net"]{“Competitive Programming”} par S. Halim et al. (3ᵉ ou 4ᵉ édition).}
}

◊link-h2["problems"]{Problèmes}

Les problèmes suivants sont triés par ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/billiard"]{“Billiard”} — À quel angle et à quelle vitesse doit-on lancer une boule de billard de sorte qu’elle revienne à sa position initiale après un temps fixe et un nombre fixe de rebonds sur une table de billard français (sans poches)?}
    ◊li{◊out-link["https://open.kattis.com/problems/mandelbrot"]{“Mandelbrot”} — Calculez si un point du plan est en dehors ou à l’intérieur de l’ensemble de Mandelbrot.}
    ◊li{◊out-link["https://open.kattis.com/problems/robotprotection"]{“Robot Protection”} — Quelle est l’aire de l’ensemble des points couverts par un ensemble de balises placées dans le plan?}
    ◊li{◊out-link["https://open.kattis.com/problems/dragonballs"]{“Dragon Balls”} — Trouvez la position de ◊math{n} cibles placées dans le plan en faisant au plus 1000 appels à un oracle capable de vous donner la position de la cible la plus proche à un point donné.}
    ◊li{◊out-link["https://open.kattis.com/problems/pointinpolygon"]{“Point in Polygon”} — Déterminez si un point est à l’intérieur ou à l’extérieur d’un polygone simple dont les sommets sont donnés en ordre.}
}
