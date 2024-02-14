#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{8e87ad38-b7b5-4e38-9f0b-4c8932734ba2}
◊define-meta[title]{Rencontre #28: Séquences croissantes}
◊define-meta[date]{2024-02-07T18:00:00-05:00}
◊define-meta[summary]{Nous nous intéressons cette semaine à trois problèmes de recherche de sous-séquences croissantes optimales.}

Le ◊out-link["https://fr.wikipedia.org/wiki/Plus_longue_sous-suite_strictement_croissante"]{problème de la plus longue sous-séquence croissante} est un problème classique en programmation compétitive.
Il consiste à rechercher, à l’intérieur d’une liste de ◊math{n} éléments, un sous-ensemble d’éléments qui y apparaissent en ordre croissant.

Ce problème peut être résolu en temps ◊math{\mathcal{O}(n \log n)} avec une recherche binaire.
C’est notamment à l’aide de cette solution qu’on peut résoudre le problème ◊out-link["https://open.kattis.com/problems/trainsorting"]{“Train Sorting”} présenté lors du ◊in-link["posts/30"]{concours interne d’il y a deux semaines}.

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.

◊ol[#:class "long-list"]{
    ◊problem["alphabet" "Alphabet" "2.7"]{Quel est le nombre minimum de caractères qu’il faut ajouter à une chaîne pour qu’elle contienne une sous-séquence égale à l’alphabet entier?}
    ◊problem["increasingsubsequence" "Increasing Subsequence" "4.2"]{Parmi les sous-séquences strictement croissantes d’une séquence, trouvez la plus basse dans l’ordre lexicographique.}
    ◊problem["longincsubseq" "Longest Increasing Subsequence" "5.3"]{Trouvez n’importe quelle plus longue sous-séquence strictement croissante dans des ◊strong{longues} liste d’entiers.}
    ◊problem["nesteddolls" "Nested Dolls" "6.5"]{En rangeant optimalement une collection de matriochkas les unes dans les autres, combien de poupées peut-on avoir au minimum à la fin?}
}
