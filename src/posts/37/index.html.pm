#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{bf8c76d2-5aa9-4464-90e9-de9019e576a6} 
◊define-meta[title]{Rencontre #33: Arrays, Hachage et Piles}
◊define-meta[date]{2024-09-11T18:00:00-05:00}
◊define-meta[summary]{Continuation des problèmes d’array et introduction au Hachage (hashing) et Piles (stacks)}
◊define-meta[author]{Guillaume Tardif et Samuel Maltais}

Lors de cette rencontre, nous poursuivrons notre exploration des problèmes liés aux arrays en introduisant deux concepts 
fondamentaux en programmation compétitive : le hachage et les piles. Ces outils puissants vous permettront de résoudre une 
variété de problèmes plus efficacement, en manipulant et en organisant les données d’une manière qui simplifie les calculs 
et améliore les performances. Nous explorerons les bases de ces structures, leur utilité, et comment les utiliser dans des 
contextes pratiques à l’aide de Python.

◊link-h2["stacks"]{Introduction aux Piles (Stacks)}

Une pile (stack) est une structure de données qui suit le principe "Last In, First Out" (LIFO),
c’est-à-dire que le dernier élément ajouté est le premier à être retiré. Imaginez une pile d’assiettes 
où vous ne pouvez retirer que celle du dessus.

◊ul{
    ◊li{◊strong{Pourquoi utiliser les piles ?} Les piles sont utiles pour des opérations qui nécessitent une 
    gestion de l’ordre, comme l’évaluation d’expressions (utilisation des parenthèses), le backtracking (revenir 
    en arrière dans des algorithmes de recherche), et la gestion des appels récursifs.
    }
    ◊li{◊strong{Classes et méthodes Python utiles pour les piles :}
        ◊ul{
            ◊li{
                Listes (list) : En Python, vous pouvez utiliser une liste comme pile en utilisant les méthodes append() 
                pour ajouter un élément et pop() pour retirer le dernier élément.
                ◊code["python3"]{    
                    stack = []  # Créer une pile vide
                    stack.append(1)  # Ajouter 1 à la pile
                    stack.append(2)  # Ajouter 2 à la pile
                    print(stack.pop())  # Retirer le dernier élément (2) et l’afficher}
            }
            ◊li{
                Module collections.deque : Pour une pile plus performante, utilisez deque du module collections, qui est 
                optimisé pour les ajouts et retraits aux extrémités.
                ◊code["python3"]{
                    from collections import deque
                    stack = deque()
                    stack.append(1)
                    stack.append(2)
                    print(stack.pop())  # Retirer et afficher le dernier élément (2)}
            }
        }
    }
}

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.


◊ol[#:class "long-list"]{
    ◊problem-with-leetcode["delimeitersoup" "Delimiter Soup" "1.9"

        (list
            ◊leetcode-problem["https://leetcode.com/problems/missing-number/description/" "Missing Number" "Easy"]{Problème similaire sur Leetcode.}
        )
    ]{Validez une chaîne de caractères composée de parenthèses, crochets et accolades en détectant la première erreur de délimiteur ou en confirmant l’absence d’erreurs.}

    ◊problem-with-leetcode["throwns" "Game of Throwns" "2.6"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/top-k-frequent-elements/description/" "Top K Frequent Elements" "Medium"]{Problème similaire sur Leetcode.}
        )
    ]{Déterminez quel enfant finit avec l’œuf après une série de lancers et d’annulations, selon les instructions données par Daenerys.}

    ◊problem-with-leetcode["restaurant" "Working at the Restaurant" "4.1"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/contains-duplicate/description/" "Contains Duplicate" "Easy"]{Problème plus facile sur LeetCode.}
        )
    ]{Simulez le dépôt et la prise d’assiettes sur deux piles pour les passer au lave-vaisselle dans l’ordre correct, en respectant les commandes reçues et en optimisant les mouvements.}

    ◊problem-with-leetcode["joinstrings" "Join Strings" "5.5"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/design-front-middle-back-queue/description/" " Design Front Middle Back Queue" "Medium"]{Problème similaire on LeetCode.}
        )
    ]{Concaténez des chaînes de caractères en suivant une série d’opérations, et affichez la chaîne finale qui reste après avoir exécuté toutes les opérations.}
}
