#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{d36d5e57-7925-4ccf-9aae-b03e7cde6583}
◊define-meta[title]{Rencontre #9: Problèmes de l’ICPC 2021}
◊define-meta[date]{2022-12-01T17:30:00-05:00}
◊define-meta[summary]{Nous avons commencé à étudier une série de problèmes issus de l’édition de l’année passée de l’ICPC en Amérique du Nord.}

Cette semaine, nous avons étudié une ◊a[#:href "#problems"]{série de problèmes} tirés de l’édition 2021 des phases ◊out-link["https://nena21.kattis.com/contests/nena21/problems"]{régionales} et ◊out-link["https://nac22.kattis.com/contests/nac22/problems"]{continentales} de l’ICPC en Amérique du Nord.
◊out-link["https://na-northeast.icpc.io/"]{La prochaine édition} commencera le 25 février prochain.
Nous constituons présentement des équipes d’étudiant.e.s qui y représenteront notre université.
Si cela vous intéresse, ◊em{n’hésitez pas à vous manifester!}
Même si vous n’estimez pas avoir beaucoup d’expérience, il reste encore du temps pour s’entraîner.

◊link-h2["conseils"]{Conseils}

Dans la plupart des problèmes de l’ICPC, les entrées/sorties en exemple ne sont volontairement ◊strong{pas représentatives} de tous les cas à traiter.
C’est à vous d’imaginer les cas extrêmes possibles, en lisant attentivement la description du problème.
Dans le contexte du concours, c’est d’autant plus important puisque chaque soumission erronée vous coûte une pénalité de score.

Par ailleurs, dans une épreuve de l’ICPC, les problèmes ne sont pas donnés dans l’ordre de difficulté croissante.
Pendant le concours, ce sera à vous d’identifier rapidement les problèmes les plus faciles, pour les traiter en premier.
Chaque minute compte, puisque le temps écoulé entre le début du concours et votre résolution de chaque problème contribue à votre score.

◊link-h2["problems"]{Problèmes}

Les problèmes de la série ci-dessous sont en ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/reversiblecyclic"]{“Reversibly Cyclic Strings”} — Pour une chaîne ◊math{s}, est-ce que toutes les sous-chaînes de ◊math{s} apparaissent à l’envers dans au moins une des rotations de ◊math{s}?}
    ◊li{◊out-link["https://open.kattis.com/problems/tictactoecounting"]{“Tic Tac Toe Counting”} — En jouant à partir d’une configuration de ◊em{tic tac toe}, calculez le nombre de configurations finales valides qui peuvent être atteintes.}
    ◊li{◊out-link["https://open.kattis.com/problems/riseandfall"]{“Rise and Fall”} — Trouvez le plus grand entier inférieur à un entier donné dont la représentation décimale est croissante puis décroissante.}
    ◊li{◊out-link["https://open.kattis.com/problems/tetrisgeneration"]{“Tetris Generation”} — Les pièces de Tetris sont choisies en répétant des permutations aléatoires des 7 tétraminos possibles. Déterminez si une séquence de tétraminos donnée pourrait apparaître.}
    ◊li{◊out-link["https://open.kattis.com/problems/failthemall"]{“Fail Them All!”} — À partir des réponses données par des étudiants à un examen en vrai ou faux, déterminez une façon de les corriger faisant en sorte qu’aucun d’entre eux n’ait plus d’une bonne réponse.}
}
