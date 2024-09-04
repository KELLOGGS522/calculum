#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{bf8c76d2-5aa9-4464-90e9-de9019e576a6} 
◊define-meta[title]{Rencontre #32: Introduction Hiver 2024}
◊define-meta[date]{2024-09-04T18:00:00-05:00}
◊define-meta[summary]{Introduction à la rencontre d’hiver 2024.}
◊define-meta[author]{Guillaume Tardif et Samuel Maltais}

Les problèmes de cette semaine font appel à des structures ◊out-link["https://dahadaller.github.io/blog/2020/05/10/stacks-queues-heaps-and-hash-tables-in-python/"]{de pile, de file et de file de priorité}.
L’utilisation de ces structures est soit demandée explicitement dans l’énoncé des problèmes, soit implicite dans l’algorithme qui permet de les résoudre.

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.


◊ol[#:class "long-list"]{
    ◊problem-with-leetcode["fizzbuzz" "FizzBuzz" "1.4"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/fizz-buzz/description/" "Fizz Buzz" "Easy"]{Problème similaire sur Leetcode.}
        )
    ]{Implémentez le célèbre jeu de FizzBuzz en suivant des règles simples.}

    ◊problem-with-leetcode["flexible" "Flexible Spaces" "1.7"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/combinations/description/" "Combinations" "Medium"]{Problème plus facile sur LeetCode.}
        )
    ]{Calculez les espaces flexibles qui peuvent être formés par des séparateurs.}

    ◊problem-with-leetcode["secretmessage" "Secret Message" "1.8"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/rotate-image/description/" "Rotate Image" "Medium"]{Problème similaire on LeetCode.}
            ◊leetcode-problem["https://leetcode.com/problems/flipping-an-image/description/" "Flipping an Image" "Easy"]{Problème plus facile sur LeetCode.}
        )
    ]{Décryptez un message secret en le réorganisant sous une forme carrée.}

    ◊problem-with-leetcode["settlers2" "Settlers of Catan" "4.1"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/spiral-matrix-ii/description/" "Spiral Matrix II" "Medium"]{Problème plus facile sur LeetCode.}
        )
    ]{Gérez les ressources et les routes dans le jeu de société bien connu, Settlers of Catan.}
}