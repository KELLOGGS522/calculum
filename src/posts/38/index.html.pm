#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{eff4a637-e23e-4e1a-a43a-9e8e9a8d9df8} 
◊define-meta[title]{Rencontre #35: Two Pointer}
◊define-meta[date]{2024-09-25T18:00:00-05:00}
◊define-meta[summary]{Problemes de deux pointeurs}
◊define-meta[author]{Guillaume Tardif et Samuel Maltais}

Lors de cette rencontre, nous poursuivrons notre exploration des piles (stacks), une structure de données essentielle pour de 
nombreux algorithmes. Ensuite, nous débuterons notre apprentissage des files (queues), qui suivent un principe d’organisation 
différent mais tout aussi fondamental. Préparez-vous à découvrir comment utiliser ces structures pour résoudre efficacement des 
problèmes en programmation compétitive !

https://www.youtube.com/watch?v=On03HWe2tZM

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.


◊ol[#:class "long-list"]{
    ◊problem-with-leetcode["antipalindrome" "Anti Palindrome" "2.1"
        (list
            ◊leetcode-problem["https://neetcode.io/problems/is-palindrome" "Is valid palindrom" "Easy"]{Problème similaire sur Neetcode.}
        )
    ]{Repondez si une phrase contient des palindromes}

    ◊problem-with-leetcode["inquiryi" "Inquiryi" "2.5"

        (list
            ◊leetcode-problem["https://neetcode.io/problems/three-integer-sum" "3 Sum" "Easy"]{Pas vraiment rapport avec l probleme, mais un classique incontournable.}
        )
    ]{Trouvez une valeure maximale dun polynome.}

    ◊problem-with-leetcode["subseqhard" "Subsequence Hard" "3.6"
        (list
            ◊leetcode-problem["https://neetcode.io/problems/max-water-container" "Trapping rain water" "Medium"]{Problème plus facile sur NeetCode.}
        )
    ]{Trouvez une sous sequence.}

    ◊problem-with-leetcode["sound" "The Sound of Silence" "4.2"
        (list
            ◊leetcode-problem["https://neetcode.io/problems/trapping-rain-water" " Merge Intervals" "Hard"]{Problème similaire on NeetCode.}
        )
    ]{Son}
}
