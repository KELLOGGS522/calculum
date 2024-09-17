#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{eff4a637-d17e-4e1a-a43a-6e8e9a8d9df8} 
◊define-meta[title]{Rencontre #34: Piles et Files}
◊define-meta[date]{2024-09-18T18:00:00-05:00}
◊define-meta[summary]{Continuation des problèmes de Piles (stacks) et introduction au Files (queues)}
◊define-meta[author]{Guillaume Tardif et Samuel Maltais}

Lors de cette rencontre, nous poursuivrons notre exploration des piles (stacks), une structure de données essentielle pour de 
nombreux algorithmes. Ensuite, nous débuterons notre apprentissage des files (queues), qui suivent un principe d’organisation 
différent mais tout aussi fondamental. Préparez-vous à découvrir comment utiliser ces structures pour résoudre efficacement des 
problèmes en programmation compétitive !

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
        }
    }
}

◊link-h2["queues"]{Introduction aux Files (Queues)}

Une file (queue) est une structure de données qui suit le principe du "First In, First Out" (FIFO), où le premier élément ajouté 
est le premier à être retiré, comme une file d’attente dans un magasin.

◊ul{
    ◊li{◊strong{Utilisation des files :}  Les files sont utiles dans des situations où l’ordre d’entrée doit être respecté, comme la 
    gestion des tâches dans les systèmes d’exploitation, le traitement des demandes de serveur, ou dans certains algorithmes de parcours
     de graphe (comme le parcours en largeur, Breadth-First Search).
    }
    ◊li{◊strong{Classes et méthodes Python utiles pour les files :}
        ◊ul{
            ◊li{
                Module collections.deque : En Python, une file peut être efficacement implémentée avec deque pour ajouter (append()) et retirer
                 (popleft()) des éléments. deque est particulièrement performant pour les opérations d’insertion et de suppression aux deux extrémités,
                  ce qui en fait un choix idéal pour implémenter une file.
                ◊code["python3"]{    
                    from collections import deque
                    queue = deque()
                    queue.append(1)  # Ajouter 1 à la fin de la file
                    queue.appendleft(2)  # Ajouter 2 au début de la file
                    print(queue.popleft())  # Retirer et afficher le premier élément (2)
                    print(queue.pop()) # Retirer et afficher le dernier élément (1)}
            }
        }
    }
    ◊li{◊strong{Listes Chaînées et Files :} Bien que les listes chaînées ne soient pas nécessaires pour implémenter une file en Python, elles peuvent être
     utilisées pour comprendre les concepts sous-jacents des structures de données. Dans des langages de bas niveau ou des environnements à contraintes de
      mémoire, implémenter une file avec une liste chaînée peut être pertinent pour optimiser l’espace et les opérations d’insertion/suppression. Cependant,
       dans la plupart des cas pratiques en Python, l’utilisation de deque ou queue.Queue est plus simple et plus efficace.
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
