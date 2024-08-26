#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{d35a83f1-2262-4bb8-b7db-2a2716fa67d5}
◊define-meta[title]{Concours #1}
◊define-meta[date]{2022-11-24T17:30:00-05:00}
◊define-meta[summary]{L’objectif de cette rencontre était de se mettre dans des conditions similaires à celles d’un concours de programmation. Pendant deux heures, vous avez dû résoudre le plus de problèmes possible parmi 5 problèmes dévoilés le jour même.}
◊define-meta[author]{Mattéo Delabre}

Cette semaine, notre rencontre a exceptionnellement pris la forme d’un concours d’entraînement.
L’objectif était de se mettre dans des conditions similaires à celles d’un concours de programmation.
Pendant deux heures, vous avez dû ◊em{résoudre le plus de problèmes possible} parmi 5 problèmes qui ont été dévoilés le jour même.
Ces problèmes portaient sur les thématiques vues pendant les semaines précédentes (géométrie, chaînes de caractères, graphes, programmation dynamique).

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/metaprogramming"]{“Metaprogramming”} — Simulez l’exécution d’un programme décrit dans un langage de programmation basique à deux instructions.}
    ◊li{◊out-link["https://open.kattis.com/problems/anagramcounting"]{“Anagram Counting”} — Calculez le nombre d’anagrammes distincts possibles pour un mot. Attention, le mot peut contenir des lettres répétées!}
    ◊li{◊out-link["https://open.kattis.com/problems/squaredeal"]{“Square Deal”} — Déterminez s’il est possible de coller trois rectangles ensemble de sorte à former un carré.}
    ◊li{◊out-link["https://open.kattis.com/problems/cartrouble"]{“Car Trouble”} — Étant donné un réseau routier orienté, déterminez les routes qui ne peuvent pas être atteintes depuis la route n°0, et inversement celles qui ne permettent pas d’atteindre cette route.}
    ◊li{◊out-link["https://open.kattis.com/problems/robotsonagrid"]{“Robots on a Grid”} — Calculez le nombre de chemins possibles d’un coin à l’autre d’une grille contenant des obstacles en se déplaçant uniquement vers le bas ou la droite. S’il n’y a aucun chemin, déterminez s’il est au moins possible de connecter les deux coins en autorisant les déplacements vers le haut ou vers la gauche.}
}

Le concours a eu lieu sur Kattis.
Le classement est fait en ordre décroissant selon le nombre de problèmes résolus, puis, en cas d’égalité, en ordre croissant selon la somme du temps pris à résoudre les problèmes, plus une pénalité de 20 minutes pour chaque erreur.
◊out-link["https://open.kattis.com/contests/n25qzb"]{Voir les résultats du concours →}
