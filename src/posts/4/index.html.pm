#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{ee42eda3-cebd-4d9c-8447-28939a9c0884}
◊define-meta[title]{Rencontre hebdomadaire du club #3}
◊define-meta[date]{2022-10-06T17:30:00-04:00}
◊define-meta[summary]{Nous poursuivrons l’étude de la série de problèmes de la semaine précédente sur les chaînes de caractères, avec quelques problèmes supplémentaires pour celles et ceux qui en veulent davantage!}

Nous poursuivrons l’étude de la ◊in-link["posts/3/#problems"]{série de problèmes de la semaine précédente} sur les chaînes de caractères, avec quelques problèmes supplémentaires pour celles et ceux qui en veulent davantage!

◊link-h2["contest"]{Concours de programmation du Calculum}

Un concours de programmation sera organisé entre les membres du club le ◊strong{jeudi 24 novembre} à l’horaire habituel.
Le concours durera 2 heures et comprendra environ 5 problèmes de difficulté variable sur des thématiques vues précédemment.
Des équipes de 1 à 3 personnes pourront être formées.

◊link-h2["problems"]{Problèmes supplémentaires}

◊h3{Solitaire}

Dans le problème ◊out-link["https://open.kattis.com/problems/pebblesolitaire"]{“Pebble Solitaire”} de la semaine passée, on demandait de trouver une séquence de coups éliminant le plus de pions possible à partir d’une configuration initiale à 12 positions du jeu de solitaire en une dimension.

Pour aller plus loin, essayez de résoudre ◊out-link["https://open.kattis.com/problems/pebblesolitaire2"]{“Pebble Solitaire 2”} dans lequel la taille des configurations est augmentée de 12 positions à 23 positions.
Question subsidiaire: pouvez-vous trouver une stratégie qui permettrait de résoudre des configurations ◊em{encore plus grandes que celles à 23 positions?}

Si vous êtes prêts à passer dans la deuxième dimension, essayez de résoudre ◊out-link["https://open.kattis.com/problems/solitaire"]{“Peg Solitaire”}, qui reprend les règles du vrai jeu du solitaire.

◊h3{Factorisation}

Le problème ◊out-link["https://open.kattis.com/problems/stringfactoring"]{“String Factoring”} de la semaine passée demandait de trouver la meilleure compression possible d’une chaîne lorsqu’on s’autorise à factoriser récursivement des sous-périodes de cette chaîne.

Essayez maintenant le problème ◊out-link["https://open.kattis.com/problems/powerstrings"]{“Power Strings”}, qui demande simplement de trouver la période d’une chaîne, mais qui demande en plus une optimisation féroce pour pouvoir traiter jusqu’à 20 Mo d’entrée en moins de 2 secondes.
