#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{546cf03d-046b-495f-9d81-e4f6e978e47e}
◊define-meta[title]{Concours #2: Sélection des CS Games}
◊define-meta[date]{2024-01-24T18:00:00-05:00}
◊define-meta[summary]{Afin de sélectionner les membres de la délégation du DIRO pour les CS Games qui auront lieu au mois de mars prochain, nous avons organisé un concours interne.}

Afin de sélectionner les membres de la délégation du DIRO pour les CS Games qui auront lieu au mois de mars prochain, nous avons organisé un concours interne.

Le ◊out-link["https://open.kattis.com/contests/qi7iz2"]{concours}, organisé sur la plateforme Kattis, comportait 6 problèmes de difficulté croissante.
Les participants et participantes, à qui on fournissait de la pizza, avaient 2 heures pour résoudre le plus de problèmes possible.

Le classement a été fait en ordre décroissant selon le nombre de problèmes résolus, puis, en cas d’égalité, en ordre croissant selon la somme du temps pris à résoudre les problèmes, plus une pénalité de 20 minutes pour chaque erreur.

◊out-link["https://open.kattis.com/contests/qi7iz2/standings"]{Voir les résultats du concours →}

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.

◊ol[#:class "long-list"]{
    ◊problem["lineup" "Line Them Up" "1.7"]{Déterminez si une liste de noms est triée en ordre croissant, en ordre décroissant ou si elle n’est pas triée.}
    ◊problem["tgif" "Thank God it’s Friday" "3.1"]{Sachant quel jour de la semaine tombe le 1◊sup{er} janvier de cette année, déterminez si une date donnée de l’année pourrait être un vendredi.}
    ◊problem["circularcaramelcookie" "Circular Caramel Cookie" "3.8"]{Calculez le rayon minimal que doit avoir un biscuit circulaire pour qu’il contienne strictement plus que ◊math{n} carrés unitaires.}
    ◊problem["trainsorting" "Train Sorting" "5.2"]{On assemble un train en choisissant séquentiellement à partir d’une liste de voitures numérotées de placer la prochaine au début du train, à la fin du train, ou de l’ignorer. Quel est le plus long train  qui peut être assemblée de sorte que ses voitures soient classées en ordre croissant?}
    ◊problem["stringgame" "String Game" "7.1"]{Alice et Bob ôtent chacun leur tour une lettre à gauche ou à droite d’une chaîne de caractères initiale. Alice gagne si une certaine chaîne cible est atteinte, sinon Bob gagne. Si les deux joueurs jouent parfaitement, lequel des deux gagne?}
    ◊problem["landlocked" "Landlocked" "6.7"]{Une carte de plusieurs pays est donnée sous la forme d’une image. Pour chaque pays, calculez le nombre minimum d’autres pays qu’il faut traverser avant de se rendre à la mer.}
}
