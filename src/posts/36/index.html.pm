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

◊link-h2["hashing"]{Introduction au Hachage (Hashing)}

Le hachage est une technique utilisée pour stocker et rechercher des données de manière très efficace. En utilisant une 
fonction de hachage, nous pouvons convertir une entrée (comme une chaîne de caractères ou un nombre) en un index dans 
une table de hachage, ce qui permet un accès rapide aux données.

◊ul{
    ◊li{◊strong{Pourquoi utiliser le hachage ?} Le hachage est utile lorsqu’on a besoin d’accéder fréquemment à des données en 
    temps constant (O(1)), par exemple pour vérifier si un élément est présent dans un ensemble, compter les occurrences 
    d’éléments, ou créer des associations rapides entre clés et valeurs.
    }
    ◊li{◊strong{Classes et méthodes Python utiles pour le hachage :}
        ◊ul{
            ◊li{
                Dictionnaires (dict) : En Python, un dictionnaire est une implémentation directe de la table de hachage. 
                Vous pouvez l’utiliser pour stocker des paires clé-valeur.
                ◊code["python3"]{    
                    d = {}  # Créer un dictionnaire vide
                    d["apple"] = 3  # Ajouter une clé "apple" avec la valeur 3
                    print(d.get("apple", 0))  # Accéder à la valeur associée à "apple"}
            }
            ◊li{
                Ensembles (set) : Utilisez les ensembles pour stocker des éléments uniques et effectuer des opérations comme 
                l’union, l’intersection, et la différence.
                ◊code["python3"]{
                    s = set()  # Créer un ensemble vide
                    s.add(1)  # Ajouter l’élément 1 à l’ensemble
                    print(1 in s)  # Vérifier si 1 est dans l’ensemble}
            }
        }
    }
}

◊link-h2["hashing"]{Introduction aux Piles (Stacks)}

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
    ◊problem-with-leetcode["oddgnome" "Odd Gnome" "1.6"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/fizz-buzz/description/" "Fizz Buzz" "Easy"]{Problème similaire sur Leetcode.}
        )
    ]{Trouvez le roi dans chaque groupe de gnomes en identifiant l’unique gnome qui ne respecte pas l’ordre strictement croissant de leurs identifiants.}

    ◊problem-with-leetcode["conformity" "Conformity" "1.7"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/fizz-buzz/description/" "Fizz Buzz" "Easy"]{Problème similaire sur Leetcode.}
        )
    ]{Calculez le nombre d’étudiants ayant choisi la combinaison de cours la plus populaire parmi toutes les combinaisons sélectionnées par les étudiants.}

    ◊problem-with-leetcode["deduplicatingfiles" "Deduplicating Files" "3.8"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/combinations/description/" "Combinations" "Medium"]{Problème plus facile sur LeetCode.}
        )
    ]{Identifiez les fichiers en double en utilisant une fonction de hachage pour détecter les doublons potentiels et réduire le nombre de comparaisons directes entre fichiers.}

    ◊problem-with-leetcode["teque" "Teque" "4.3"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/rotate-image/description/" "Rotate Image" "Medium"]{Problème similaire on LeetCode.}
            ◊leetcode-problem["https://leetcode.com/problems/flipping-an-image/description/" "Flipping an Image" "Easy"]{Problème plus facile sur LeetCode.}
        )
    ]{Gérez une nouvelle structure de données appelée "teque" qui permet d’insérer des éléments à l’avant, à l’arrière ou au milieu, et d’accéder rapidement aux éléments par index.}

    ◊problem-with-leetcode["babynames" "Baby Names" "5.6"
        (list
            ◊leetcode-problem["https://leetcode.com/problems/spiral-matrix-ii/description/" "Spiral Matrix II" "Medium"]{Problème plus facile sur LeetCode.}
        )
    ]{Gérez une liste de prénoms avec insertion, suppression et recherche efficaces..}
}
