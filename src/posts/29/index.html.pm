#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{317820fd-30a5-478f-8c9c-ee2a6298a919}
◊define-meta[title]{Rencontre #26: Chemins dans des graphes}
◊define-meta[date]{2023-11-13T18:30:00-05:00}
◊define-meta[summary]{Nous nous intéressons cette semaine à des problèmes qui consistent à calculer des chemins à travers des graphes respectant certaines propriétés.}

Nous nous intéressons cette semaine à des problèmes qui consistent à calculer des chemins à travers des graphes respectant certaines propriétés.

◊link-h2["problems"]{Problèmes}

Les problèmes suivants sont triés par ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/builddeps"]{“Build Dependencies”} — Un ensemble de règles similaires à un ◊em{Makefile} décrit des dépendances de compilation entre des fichiers. Étant donné le nom d’un fichier ayant été modifié, lesquels autres devraient être recompilés?}
    ◊li{◊out-link["https://open.kattis.com/problems/grasshopper"]{“Gregory the Grasshopper”} — Identifiez le chemin le plus court à travers une grille n’utilisant que des déplacements de cavalier.}
    ◊li{◊out-link["https://open.kattis.com/problems/beepers"]{“Collecting Beepers”} — Calculez le meilleur chemin passant par une succession d’emplacements et revenant au point de départ.}
    ◊li{◊out-link["https://open.kattis.com/problems/eulerianpath"]{“Eulerian Path”} — Trouvez un chemin passant exactement une fois par chaque arête d’un graphe, s’il en existe un.}
    ◊li{◊out-link["https://open.kattis.com/problems/catenyms"]{“Catenyms”} — Deux mots sont des ◊em{caténymes} si le premier termine par la même lettre que la première lettre du second. À partir d’une liste de mots, donnez une chaîne de caténymes qui les visite tous exactement une fois.}
}
