#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{cd1ec0dd-04bb-4cb3-b7e9-42d163a6f24c}
◊define-meta[title]{Rencontre #37: Recherche binaire}
◊define-meta[date]{2024-10-09T18:00:00-05:00}
◊define-meta[summary]{Recherche binaire (Binary search)}
◊define-meta[author]{Guillaume Tardif et Samuel Maltais}

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.

◊ol[#:class "long-list"]{
    ◊problem-with-leetcode["synchronizinglists" "Synchronizing Lists" "1.6"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/binary-search/description/" "Binary Search" "Easy"]{Problème plus facile sur Leetcode.}
        )
    ]{Reorganisez la deuxième liste pour qu’elle corresponde à l’ordre de la première liste en respectant les correspondances des identifiants après tri.}

    ◊problem-with-leetcode["outofsorts" "Out of Sorts" "2.3"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/search-a-2d-matrix/description/" "Search a 2D Matrix" "Medium"]{Problème différent, mais utilisant la recherche binaire.}
        )
    ]{Si on exécute une recherche binaire dans un tableau non-trié, combien de valeurs sont impossibles à retrouver?}

    ◊problem-with-leetcode["roompainting" "Room Painting" "2.5"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/koko-eating-bananas/description/" "Koko Eating Bananas" "Medium"]{Problème intéressant démontrant l’utilité de la recherche binaire sous un autre angle.}
        )
    ]{On souhaite acheter de la peinture de plusieurs couleurs à une compagnie qui la vend dans des contenants de taille fixe. Étant données les quantités de peinture souhaitées, combien de peinture sera gâchée au minimum?}

    ◊problem-with-leetcode["firefly" "Firefly" "2.9"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/" "Find Minimum in Rotated Sorted Array" "Medium"]{Problème de binary search sur Leetcode.}
        )
    ]{Une luciole doit traverser en ligne droite horizontale une séquence d’obstacles verticaux. À quelle hauteur doit-on placer la luciole pour qu’elle croise le moins d’obstacles possible?}
}
