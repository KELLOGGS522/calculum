#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{d5a73fb1-43aa-480a-bcae-2c51bbbd4359}
◊define-meta[title]{Rencontre #13: Recherche exhaustive}
◊define-meta[date]{2023-02-01T17:00:00-05:00}
◊define-meta[summary]{Nous avons étudions une série de problèmes qui font appel à diverses techniques de recherche exhaustive.}
◊define-meta[author]{Mattéo Delabre}

Nous étudions cette semaine une série de problèmes qui font appel à diverses techniques de recherche exhaustive.

◊link-h2["resources"]{Ressources}

Voici quelques ressources qui pourront vous aider pour les problèmes.

◊ul[#:class "long-list"]{
    ◊li{◊out-link["https://a3nm.net/work/teaching/2021-2022/inf280/2/recherche.pdf"]{“Stratégies de recherche”} dans le cours de programmation compétitive dispensé par Antoine Amarilli. Les deux premières sections (◊em{bruteforce} et ◊em{backtracking}) sont particulièrement pertinentes pour les problèmes ci-dessous.}
    ◊li{◊out-link["https://algo.is/aflv16/aflv_04_problem_solving_paradigms.pdf"]{“Problem Solving Paradigms”} dans le cours de programmation compétitive dispensé par Bjarki Ágúst Guðmundsson. Introduit des outils de la bibliothèque standard de C++ et Python utiles pour la recherche exhaustive.}
    ◊li{Chapitre 15 du ◊out-link["https://umontreal.on.worldcat.org/oclc/945921847"]{livre “Programmation efficace”} de C. Dürr et J.-J. Vie, notamment la section 15.4 pour l’énumération de permutations.}
}

◊link-h2["problems"]{Problèmes}

Les problèmes suivants sont triés par ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/heirsdilemma"]{“Heir’s Dilemma”} — Calculez le nombre d’entiers à l’intérieur d’un intervalle qui peuvent potentiellement déverrouiller un cadenas aux spécifications données.}
    ◊li{◊out-link["https://open.kattis.com/problems/closestsums"]{“Closest Sums”} — Dans un ensemble, trouvez une paire d’entiers dont la somme est la plus proche possible du nombre demandé.}
    ◊li{◊out-link["https://open.kattis.com/problems/kitchen"]{“Kitchen Measurements”} — Étant donné un ensemble de tasses pouvant chacune mesurer un certain volume, trouvez une façon de mesurer le volume demandé.}
    ◊li{◊out-link["https://open.kattis.com/problems/cardhand"]{“Card Hand Sorting”} — Vous devez trier une main de cartes qui vous a été donnée. Pour ce faire, vous déplacez une carte à la fois à la position souhaitée. Quel est le nombre minimum d’opérations nécessaires pour trier votre main par couleur et dans l’ordre des valeurs?}
    ◊li{◊out-link["https://open.kattis.com/problems/rubiksrevenge"]{“Rubik’s Revenge in … 2D!? 3D?”} — Considérez une variante du ◊em{Rubik’s Cube} qui se joue sur un tore (donut). Quel est le nombre minimum d’opérations qui permet de résoudre une configuration donnée?}
}
