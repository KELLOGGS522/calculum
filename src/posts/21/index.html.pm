#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{df763284-400c-4307-b8c0-16fe5f1fa093}
◊define-meta[title]{Rencontre #18: Diviser pour régner}
◊define-meta[date]{2023-03-29T17:00:00-05:00}
◊define-meta[summary]{Nous étudierons cette semaine une série de problèmes pouvant être résolus avec diviser pour régner.}
◊define-meta[author]{Mattéo Delabre}

La série de problèmes de cette semaine peuvent être résolus avec des approches de type ◊em{diviser pour régner}.
Ce type d’algorithme séparent le problème à résoudre en plusieurs sous-problèmes résolus récursivement, puis rassemblent les résultats pour calculer la réponse au problème original.

◊link-h2["resources"]{Ressources}

Voici quelques ressources qui pourront vous aider pour les problèmes.

◊ul{
    ◊li{◊out-link["https://algo.is/aflv16/aflv_04_problem_solving_paradigms.pdf"]{“Problem Solving Paradigms”, section “Divide and Conquer”} dans le cours de programmation compétitive dispensé par Bjarki Ágúst Guðmundsson.}
    ◊li{Section 3.3 de ◊out-link["https://cpbook.net"]{“Competitive Programming”} par S. Halim et al.}
    ◊li{Section 12.3 de ◊out-link["https://umontreal.on.worldcat.org/oclc/945921847"]{“Programmation efficace”} par C. Dürr et J.-J. Vie, utile en particulier pour le dernier problème.}
    ◊li{Section 15.4.2 de ◊out-link["https://umontreal.on.worldcat.org/oclc/1154565111"]{“Guide to Competitive Programming”} par A. Laaksonen.}
}

◊link-h2["problems"]{Problèmes}

Les problèmes suivants sont triés par ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/outofsorts"]{“Out of Sorts”} — Si on exécute une recherche binaire dans un tableau non-trié, combien de valeurs sont impossibles à retrouver?}
    ◊li{◊out-link["https://open.kattis.com/problems/batmanacci"]{“Batmanacci”} — Calculez la valeur de la ◊math{k}-ème lettre du ◊math{n}-ème mot dans la séquence des ◊out-link["https://fr.wikipedia.org/wiki/Mot_de_Fibonacci"]{mots de Fibonacci}.}
    ◊li{◊out-link["https://open.kattis.com/problems/firefly"]{“Firefly”} — Une luciole doit traverser en ligne droite horizontale une séquence d’obstacles verticaux. À quelle hauteur doit-on placer la luciole pour qu’elle croise le moins d’obstacles possible?}
    ◊li{◊out-link["https://open.kattis.com/problems/roompainting"]{“Room Painting”} — On souhaite acheter de la peinture de plusieurs couleurs à une compagnie qui la vend dans des contenants de taille fixe. Étant données les quantités de peinture souhaitées, combien de peinture sera gâchée au minimum?}
    ◊li{◊out-link["https://open.kattis.com/problems/closestpair2"]{“Closest Pair”} — Identifiez rapidement la paire de points la plus rapprochée parmi un ensemble de points dans le plan.}
}
