#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{fe68a4ce-050f-4897-9aa0-9c6e960a912f}
◊define-meta[title]{Rencontre #11: Mathématiques}
◊define-meta[date]{2023-01-18T17:00:00-05:00}
◊define-meta[summary]{Pour commencer la session d’hiver, nous étudierons une belle série de problèmes qui mêlent algorithmique et mathématiques.}
◊define-meta[author]{Mattéo Delabre}

Pour commencer la session d’hiver, nous étudierons une belle série de problèmes qui mêlent algorithmique et mathématiques.

◊p[#:class "standout"]{
    ◊strong{Bienvenue aux personnes qui rejoignent le club aujourd’hui!}◊br[]
    Jetez un œil à la ◊in-link["files/2022-09-16-Presentation-Calculum.pdf"]{présentation du club} qui s’est donnée en septembre.
    Pour pouvoir vous attaquer aux problèmes de cette semaine, commencez par vous ◊out-link["https://open.kattis.com/register"]{créer un compte sur Kattis}.
    N’hésitez pas à poser des questions autour de vous!
}

◊link-h2["problems"]{Problèmes}

Les problèmes de cette série font appel à différents concepts mathématiques, notamment l’arithmétique modulaire.
La liste est en ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/dasblinkenlights"]{“Das Blinkenlights”} — Déterminez si deux lumières clignotantes finiront par s’allumer simultanément avant un instant donné.}
    ◊li{◊out-link["https://open.kattis.com/problems/threepowers"]{“Three Powers”} — Considérez la liste des sous-ensembles de puissances de 3, dans l’ordre croissant de la somme de leurs éléments. Quel est le ◊math{n}-ème ensemble dans cette liste?}
    ◊li{◊out-link["https://open.kattis.com/problems/crackingrsa"]{“Cracking RSA”} — Calculez la clé privée correspondant à une clé publique de ◊out-link["https://fr.wikipedia.org/wiki/Chiffrement_RSA"]{chiffrement RSA}, pour des petits nombres premiers (clé de 20 bits).}
    ◊li{◊out-link["https://open.kattis.com/problems/bachetsgame"]{“Bachet’s Game”} — Dans cette variante du ◊out-link["https://fr.wikipedia.org/wiki/Jeux_de_Nim"]{jeu de Nim}, les deux joueurs ôtent chacun leur tour ◊math{x} roches d’un unique tas de ◊math{n} roches, où ◊math{x} doit être choisi parmi un ensemble de possibilités données. Le joueur qui retire la dernière roche gagne. Existe-t-il une stratégie gagnante pour le premier joueur?}
    ◊li{◊out-link["https://open.kattis.com/problems/xormax"]{“XOR max”} — Quelle est la plus grande valeur pouvant être obtenue en choisissant des nombres parmi un ensemble de nombres et en calculant leur somme XOR?}
}

◊em{Bonus: ◊out-link["https://open.kattis.com/problems/tetration"]{“Tetration”} (un problème purement mathématique).}
