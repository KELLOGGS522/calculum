#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{b7338b06-9c7a-43f5-8a38-68a9f9c6977b}
◊define-meta[title]{Rencontre #30: Jeux}
◊define-meta[date]{2024-02-14T18:00:00-05:00}
◊define-meta[summary]{Nous nous intéressons cette semaine à des problèmes de stratégie ou de calcul liés à des jeux à deux ou plusieurs joueurs.}
◊define-meta[author]{Mattéo Delabre}

Nous nous intéressons cette semaine à des problèmes de stratégie ou de calcul liés à des jeux à deux ou plusieurs joueurs.

◊link-h2["problems"]{Problèmes}

Le nombre à côté de chaque problème indique son niveau de difficulté selon Kattis.

◊ol[#:class "long-list"]{
    ◊problem["snim" "S-Nim" "3.1"]{Dans cette version modifiée du ◊out-link["https://fr.wikipedia.org/wiki/Jeux_de_Nim"]{jeu de Nim}, chaque joueur peut enlever exactement 2 ou 5 pions à chaque tour. Déterminez s’il est possible pour le premier joueur de gagner en partant d’une configuration donnée.}
    ◊problem["onaveragetheyrepurple" "On Average They’re Purple" "3.0"]{Alice colore chaque arête d’un graphe en ◊em{bleu} ou en ◊em{rouge}. Bob doit ensuite chercher un chemin entre deux sommets donnés du graphe qui alterne le moins souvent entre les deux couleurs. En choisissant judicieusement sa coloration, quel est le nombre maximal d’alternations de couleurs qu’Alice peut forcer Bob à faire?}
    ◊problem["connectn" "Connect-N" "3.8"]{Déterminez si une grille de ◊out-link["https://en.wikipedia.org/wiki/Connect_Four"]{◊em{Connect Four}} (généralisé à ◊em{Connect-◊math{N}}) est gagnante pour l’un des deux joueurs.}
    ◊problem["settlers2" "Settlers of Catan" "4.2"]{Calculez une façon équitable de mettre en place une partie de Catane selon certaines règles.}
    ◊problem["leprechaunhunt" "The Leprechaun Hunt" "7.9"]{Des villageois se répartissent sur les sommets d’un graphe et doivent attraper un leprechaun positionné sur l’un des autres sommets. À chaque tour, un des villageois se déplace vers un des sommets voisins, tandis que le leprechaun a le choix entre rester sur place ou se déplacer vers un voisin. Quel est le nombre minimum de tours requis pour qu’un des villageois puisse attraper le leprechaun?}
}
