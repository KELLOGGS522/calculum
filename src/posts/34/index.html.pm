#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{0ab8f4f1-051d-4d28-999f-0c8b64d2ef5e}
◊define-meta[title]{Rencontre #31: Piles et files}
◊define-meta[date]{2024-03-20T18:00:00-05:00}
◊define-meta[summary]{Les problèmes de cette semaine utilisent des piles, des files et des files de priorité.}
◊define-meta[author]{Mattéo Delabre}

Les problèmes de cette semaine font appel à des structures ◊out-link["https://dahadaller.github.io/blog/2020/05/10/stacks-queues-heaps-and-hash-tables-in-python/"]{de pile, de file et de file de priorité}.
L’utilisation de ces structures est soit demandée explicitement dans l’énoncé des problèmes, soit implicite dans l’algorithme qui permet de les résoudre.

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.

◊ol[#:class "long-list"]{
    ◊problem["circuitmath" "Circuit Math" "2.1"]{Évaluez un circuit booléen exprimé en notation postfixe.}
    ◊problem["throwns" "Game of Throwns" "2.7"]{Calculez la position finale d’un objet autour d’un cercle à la suite de l’exécution de commandes pouvant être annulées.}
    ◊problem["stockprices" "Stock Prices" "4.0"]{Calculez l’évolution du prix d’une action en utilisant l’historique de vente et d’achat.}
    ◊problem["restaurant" "Working at the Restaurant" "4.3"]{Trouvez une façon d’empiler des assiettes en attendant de les passer à quelqu’un d’autre en les gardant dans le même ordre.}
    ◊problem["entertainmentbox" "Entertainment Box" "6.0"]{Combien d’émissions télévisées peut-on enregistrer au maximum au long d’une journée en utilisant un appareil capable d’enregistrer ◊math{n} émissions simultanément?}
}
