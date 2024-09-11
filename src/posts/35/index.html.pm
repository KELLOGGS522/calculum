#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{bf8c76d2-5aa9-4464-90e9-de9019e576a6} 
◊define-meta[title]{Rencontre #32: Introduction Automne 2024}
◊define-meta[date]{2024-09-04T18:00:00-05:00}
◊define-meta[summary]{Introduction à la rencontre d’automne 2024.}
◊define-meta[author]{Guillaume Tardif et Samuel Maltais}

Les problèmes de cette semaine ne nécessitent aucune connaissance préalable, à l’exception de celles de la programmation de base. 
Vous remarquerez que chaque problème Kattis est associé à un ou plusieurs problèmes LeetCode, similaires ou plus faciles, afin de fournir 
une méthode d’apprentissage lorsque vous êtes bloqué sur le problème Kattis.

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
