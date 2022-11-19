#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{1197fd0f-5f87-40ac-89f1-e14f7db79955}
◊define-meta[title]{Rencontre #8: Programmation dynamique (revue)}
◊define-meta[date]{2022-11-17T17:30:00-05:00}
◊define-meta[summary]{Nous passerons en revue ensemble les problèmes de programmation dynamique et leurs solutions, et nous discuterons du concours d’entraînement à venir la semaine prochaine.}

Nous passerons en revue ensemble ◊in-link["posts/7/#problems"]{les problèmes de programmation dynamique} et leurs solutions, et nous discuterons du concours d’entraînement à venir la semaine prochaine.

◊link-h2["solutions"]{Solutions aux problèmes de programmation dynamique}

◊link-h3["commercials"]{Radio Commercials}

Dans le problème ◊out-link["https://open.kattis.com/problems/commercials"]{“Radio Commercials”}, une série ◊math{L} de ◊math{N} nombres nous était donnée.
Le ◊em{score} d’une sous-séquence (intervalle) de nombres est défini comme leur somme à laquelle on retranche la quantité de valeurs sommée, multipliée par une certaine constante ◊math{P}.
L’objectif était de trouver le meilleur score d’intervalle possible.

Une approche naïve consiste à énumérer tous les ◊math{n^2-n} intervalles possibles, puis à calculer le score de chacun, et à conserver le maximum.
Cette approche fonctionne en ◊math{O(n^3)}, ce qui n’est pas assez efficace pour valider le problème.

Une optimisation possible se trouve dans le calcul du score de chaque intervalle.
Précalculons les sommes partielles ◊math{S(i)} des ◊math{i} premières valeurs de la liste, en temps ◊math{O(n)}.
On peut alors obtenir la somme de n’importe quel intervalle entre ◊math{i} et ◊math{j} en ◊math{O(1)} en calculant ◊math{S(j) - S(i - 1)}.
L’approche initiale munie de cette optimisation fonctionne en ◊math{O(n^2)}.
Ce n’est pas encore assez rapide pour valider le problème.

Une seconde optimisation repose sur la relation de récurrence suivante.
Si ◊math{c(i)} désigne le meilleur score de n’importe quel intervalle qui se termine en ◊math{i},
◊display-math{
    c(i) = \max\begin{cases}
        c(i-1) + L[i] - P & \text{si } i \geq 1, \\
        0.
    \end{cases}
}

Le meilleur score global est obtenu en calculant ◊math{\max_{i \in \{1, \ldots, N\}}{c(i)}}.
Cette optimisation, appelée ◊out-link["https://en.wikipedia.org/wiki/Maximum_subarray_problem#Kadane's_algorithm"]{algorithme de Kadane}, donne une solution qui fonctionne en ◊math{O(n)}.
Cette complexité permet de résoudre le problème.

◊link-h3["latticepaths"]{Lattice Paths}

Dans ◊out-link["https://projecteuler.net/problem=15"]{“Lattice Paths”}, l’objectif était de calculer le nombre de chemins possibles entre le coin supérieur gauche et le coin inférieur droit dans une grille, si les seuls déplacements permis sont d’aller une case vers le bas ou une case vers la droite.

En notant ◊math{(i,j)} la ◊math{j}-ème case de la ◊math{i}-ème rangée de la grille, on peut observer que le nombre de chemins de ◊math{(1,1)} jusqu’à ◊math{(i, j)} est égal au nombre de chemins jusqu’à ◊math{(i - 1, j)} plus le nombre de chemins jusqu’à ◊math{(i, j - 1)}.
Ainsi, si ◊math{c(i, j)} désigne le nombre de chemins possibles de ◊math{(1,1)} jusqu’à ◊math{(i, j)},
◊display-math{
    c(i, j) = \begin{cases}
        c(i - 1, j) + c(i, j - 1) & \text{si } i \geq 1 \text{ et } j \geq 1,\\
        1 & \text{sinon.}
    \end{cases}
}

En observant cette récurrence, on voit qu’elle calcule le ◊out-link["https://fr.wikipedia.org/wiki/Triangle_de_Pascal"]{triangle de Pascal}.
Le nombre de chemins jusqu’à ◊math{(i, j)} correspond aux entrées ◊math{(i+j, i)} et ◊math{(i+j, j)} du triangle.

◊figure{
    ◊img[
        #:src "pascal.svg"
        #:alt "Les 6 premières rangées du triangle de Pascal, arrangées de sorte que chaque entrée est située en dessous des deux termes de la rangée précédente qui servent à son calcul"
        #:height "160"
    ]
    ◊figcaption{
        ◊out-link["https://commons.wikimedia.org/wiki/File:Pascal%27s_triangle_5.svg"]{Triangle de Pascal}
        (par ◊out-link["https://commons.wikimedia.org/wiki/User:Conrad.Irwin"]{Conrad.Irwin}
        et ◊out-link["https://commons.wikimedia.org/wiki/User:Drini"]{Drini},
        sous licence GFDL)
    }
}

Ce lien indique une interprétation combinatoire du problème.
Tous les chemins qui se rendent jusqu’à la case ◊math{(i, j)} de la grille le font en exactement ◊math{i+j} déplacements, dont ◊math{i} déplacements vers le bas et ◊math{j} déplacements vers la droite.
Le nombre de chemins possibles correspond donc au nombre de façons de choisir lesquels ◊math{i} des ◊math{i+j} déplacements se feront vers le bas, c’est-à-dire
◊display-math{c(i, j) = {i + j \choose i} = {i + j \choose j}.}

◊link-h3["tritiling"]{Tri Tiling}

◊out-link["https://open.kattis.com/problems/tritiling"]{“Tri Tiling”} est un autre problème de combinatoire, qui demandait de calculer le nombre de façons de remplir un rectangle de taille ◊math{3 \times n} avec des dominos, jusqu’à ◊math{n = 30}.
Une première observation est qu’il n’y a aucune façon de remplir le rectangle si ◊math{n} est impair, puisqu’il faudrait alors remplir un nombre impair de cases.

Sans réfléchir davantage à la structure du problème, nous pouvons mettre au point une solution en programmation dynamique.
Dans un rectangle rempli, chaque case contient une moitié de domino.
Notons ◊math{X = \{\sqsubset, \sqcup, \sqsupset, \sqcap\}} le contenu possible de chaque case.
Nous dirons que deux triplets ◊math{S = (s_1, s_2, s_3) \in X^3} et ◊math{T = (t_1, t_2, t_3) \in X^3} sont ◊em{compatibles} si deux colonnes adjacentes peuvent légitimement contenir ◊math{S} suivi de ◊math{T}.
Par exemple ◊math{(\sqsubset, \sqcap, \sqcup)} et ◊math{(\sqsupset, \sqcap, \sqcup)} sont compatibles, ainsi que ◊math{(\sqsubset, \sqsupset, \sqsubset)} et ◊math{(\sqsupset, \sqsubset, \sqsupset)}.
Au contraire, ◊math{(\sqcap, \sqcup, \sqsubset)} et ◊math{(\sqcap, \sqcup, \sqsubset)} ne sont pas compatibles.
On peut ainsi établir la liste des triplets compatibles.

Dénotons par ◊math{c(i, S = (s_1, s_2, s_3))} le nombre de façons valides de remplir un rectangle de taille ◊math{3 \times i} de sorte que les trois cases de la dernière colonne contiennent ◊math{s_1}, ◊math{s_2} et ◊math{s_3} respectivement.
Alors
◊display-math{
    c(i + 1, T) = \sum_{\substack{
        S \in X^3\\[.33em]
        S \text{ et } T \text{ compatibles}
    }}{c(i, S)}
}
avec pour cas de base ◊math{c(0, (\sqsupset, \sqsupset, \sqsupset)) = 1.}
En construisant un programme à partir de cette relation de récurrence, on obtient une solution valide pour le problème.

Remarquez l’astuce utilisée ici, qui consiste à placer une partie de l’« état » du calcul dans le paramètre de la récurrence, pour s’assurer qu’on ne dénombre que des solutions valides.
Ce procédé fonctionne pour les problèmes dont on peut déterminer ◊em{localement} la validité des solutions.
Ici un remplissage du rectangle est valide si et seulement si toutes les colonnes adjacentes sont compatibles.
Sans cette propriété, nous aurions dû placer tout l’état des colonnes précédentes dans le paramètre de la récurrence, ce qui aurait annihilé toute l’efficacité de la solution.

Si on veut pousser l’analyse un peu plus loin, il existe une récurrence paramétrée sur ◊math{i} uniquement, référencée sous ◊out-link["https://oeis.org/A001835"]{A001835} à l’OEIS.
En implémentant cette récurrence, on obtient un programme plus succinct que le précédent.

◊link-h3["narrowartgallery"]{Narrow Art Gallery}

Dans ◊out-link["https://open.kattis.com/problems/narrowartgallery"]{“Narrow Art Gallery”}, nous devions trouver comment fermer ◊math{k} pièces d’un musée de sorte que la valeur des pièces restantes soit maximale et qu’il soit toujours possible de cheminer d’un bout à l’autre du musée.
Les pièces sont disposées en ◊math{N} rangées de 2 colonnes, les visiteurs peuvent s’y déplacer horizontalement ou verticalement, et l’entrée et la sortie du musée sont en haut et en bas des ◊math{N} rangées.

Il est important de ne pas fermer deux pièces sur la même rangée, ni deux pièces en diagonale, afin d’éviter de bloquer le passage.
Remarquons que, comme dans ◊a[#:href "#tritiling"]{le problème précédent}, cette condition de validité est locale.
Il suffit donc de consacrer un paramètre dans notre relation de récurrence pour mémoriser laquelle des deux pièces a été fermée dans la rangée précédente, et ainsi éviter de fermer la pièce située en diagonale.

Notons ◊math{v_{i,j}} la valeur de la pièce à la ◊math{i}-ème rangée et la ◊math{j}-ème colonne.
Dénotons ◊math{c(i, j, s)} la meilleure solution possible pour fermer ◊math{j} pièces dans les ◊math{i} premières rangées, de sorte que seule la première pièce de la ◊math{i}-ème rangée reste ouverte si ◊math{s = 0}, la seconde pièce si ◊math{s = 1}, ou les deux si ◊math{s = -1}.
Alors
◊display-math{c(0, j, s) = 0 \text{ si } j = 0 \text{, sinon } -\infty,}
◊display-math{c(i + 1, j, -1) = \max_{t \in \{-1, 0, 1\}}\{c(i, j, t) + v_{i,0} + v_{i,1}\},}
◊display-math{c(i + 1, j + 1, s) = \max_{t \in \{-1, s\}}\{c(i, j, t) + v_{i,s}\}.}
Finalement, la meilleure solution est obtenue en calculant ◊math{\max_{s \in \{-1, 0, 1\}}c(N, k, s)}.

◊link-h3["goodcoalition"]{Good Coalition}

Dans ◊out-link["https://open.kattis.com/problems/goodcoalition"]{“Good Coalition”}, l’objectif était de trouver la coalition majoritaire de partis ayant la plus grande probabilité de se rendre au terme de son mandat.
Chacun des ◊math{N} partis a une probabilité ◊math{p_i} de terminer son mandat et a obtenu un nombre ◊math{s_i} de sièges aux dernières élections.
Une coalition majoritaire est un sous-ensemble de partis dont le nombre total de sièges atteint ou dépasse 76 sur 150.

Nous pouvons aborder ce problème comme une variante du ◊out-link["https://fr.wikipedia.org/wiki/Problème_du_sac_à_dos"]{problème du sac à dos}.
Au lieu de choisir des objets en maximisant leur utilité sans dépasser une limite de poids, nous choisissons ici des partis en maximisant la probabilité qu’ils terminent son mandat et sans être en dessous de 76 sièges.

Notons ◊math{c(i, j)} la meilleure probabilité de toute coalition formée d’un sous-ensemble des partis ◊math{\{1, \ldots, i\}} et atteignant exactement ◊math{j} sièges.
On a alors la relation de récurrence suivante, adaptée de la formulation habituelle en programmation dynamique pour le problème du sac à dos,
◊display-math{
    c(i, j) = \max\begin{cases}
        1 & \text{si } j = 0, \\
        0 & \text{si } i = 0 \text{ et } j \geq 1, \\
        c(i - 1, j) & \text{si } i \geq 1, \\
        c(i - 1, j - s_i) \times p_i & \text{si } i \geq 1 \text{ et } j \geq s_i. \\
    \end{cases}
}
Finalement, la probabilité de la meilleure coalition est obtenue en calculant ◊math{\max_{j \in \{76, \ldots, 150\}}{c(N, j)}}.
