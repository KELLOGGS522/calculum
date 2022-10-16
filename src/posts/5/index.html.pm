#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{0a159acf-4bca-4817-946c-502b11d18e46}
◊define-meta[title]{Rencontre hebdomadaire du club #4}
◊define-meta[date]{2022-10-13T17:30:00-04:00}
◊define-meta[summary]{Nous avons discuté des solutions aux problèmes sur les chaînes de caractères, puis une nouvelle série de problèmes sur les graphes a été annoncée.}

Nous avons discuté des ◊a[#:href "#solutions"]{solutions aux problèmes sur les chaînes de caractères},
puis une nouvelle ◊a[#:href "#problems"]{série de problèmes sur les graphes} a été annoncée.

◊link-h2["solutions"]{Solutions aux problèmes de chaînes de caractères}

Au cours des ◊in-link["posts/3/"]{deux} ◊in-link["posts/4/"]{dernières} semaines, nous nous sommes consacrés à des problèmes sur les chaînes de caractères.
Nous avons consacré cette rencontre à une discussion sur les solutions à ces problèmes.

◊h3{Avion}

Pour résoudre le problème ◊out-link["https://open.kattis.com/problems/avion"]{“Avion”}, il suffisait d’analyser chaque ligne de l’entrée à la recherche d’un motif fixé, et de noter les lignes contenant une occurrence.
Certains se sont essayés au ◊em{code golfing} sur ce problème: pour le moment, ◊out-link["https://open.kattis.com/problems/avion/statistics#toplist_shortest_title"]{la plus courte solution trouvée} est longue de 62 octets et programmée en Python 3.

◊h3{Solitaires}

Le problème ◊out-link["https://open.kattis.com/problems/pebblesolitaire"]{“Pebble Solitaire”} peut être résolu par une recherche exhaustive ◊em{(backtracking)} qui essaie tous les coups possibles et retient le minimum de pions qu’on peut ainsi atteindre.
◊out-link["https://open.kattis.com/problems/pebblesolitaire/statistics#toplist_shortest_title"]{La plus courte solution trouvée} pour ce problème est longue de 155 octets et programmée en Python 3.
Certains ont proposé des solutions en Prolog, en tirant parti du ◊em{backtracking} intégré au langage.

La variante ◊out-link["https://open.kattis.com/problems/pebblesolitaire2"]{“Pebble Solitaire 2”} complique le problème en faisant passer la taille des configurations de 12 positions à 23 positions.
Ici encore, une recherche exhaustive est suffisante, quoiqu’il soit en plus nécessaire de retenir les configurations déjà rencontrées pour sauver du temps de calcul.
Le passage à la deuxième dimension avec ◊out-link["https://open.kattis.com/problems/solitaire"]{“Peg Solitaire”} se traite également par recherche exhaustive, la difficulté ici étant dans la représentation et la manipulation des configurations.

Certains se sont interrogés sur la possibilité de résoudre ces problèmes sans avoir recours à la recherche exhaustive.
Il s’est avéré que d’autres se sont posés la question avant nous.
En deux dimensions, le problème a été montré NP-complet par ◊out-link["https://www.jaist.ac.jp/~uehara/index-e.html"]{Ryuhei Uehara} et Shigeki Iwata en 1990 dans ◊out-link["https://dspace.jaist.ac.jp/dspace/bitstream/10119/4709/1/3951.pdf"]{“Generalized Hi-Q is NP-Complete”}.
En une dimension, l’article ◊out-link["http://library.msri.org/books/Book42/files/moore.pdf"]{“One-Dimensional Peg Solitaire, and Duotaire”} par ◊out-link["https://sites.santafe.edu/~moore/"]{Cristopher Moore} et ◊out-link["https://www.ics.uci.edu/~eppstein/"]{David Eppstein} (2002) détaille une solution en temps linéaire!

Malheureusement, une tentative d’implémentation de ce dernier algorithme s’est soldée par un échec.
Nous avons émis des doutes sur la validité d’une des affirmations de l’article, selon laquelle toute configuration réductible à ◊math{k} pions peut être divisée en ◊math{k} configurations réductibles chacune à 1 pion.
Nous avons écrit à Cristopher Moore pour obtenir plus d’explications à ce sujet.

◊h3{Bing It On}

Une approche naïve pour résoudre ◊out-link["https://open.kattis.com/problems/bing"]{“Bing It On”} consiste à conserver la liste des mots vus précédemment, et à parcourir cette liste à chaque nouveau mot ◊math{w} pour trouver le nombre de mots précédents dont ◊math{w} est un préfixe.
Cette approche en ◊math{O(N^2)} n’est pas assez efficace pour résoudre le problème.

Une façon d’en améliorer l’efficacité consiste à construire une table de hachage dans laquelle on sauve le nombre de fois que chaque préfixe de chaque mot précédent a été vu.
Cette construction se fait en ◊math{O(N)}, puisque le nombre de caractères de chaque mot (et donc le nombre de préfixes par mot) ne dépasse jamais 32.
À l’aide de cette table, on peut répondre en temps constant amorti à la question du nombre de mots précédents dont le mot actuel est un préfixe.

Une autre approche consiste à construire un ◊out-link["https://en.wikipedia.org/wiki/Trie"]{trie} contenant tous les mots rencontrés au fur et à mesure.
Chaque nœud du trie est annoté avec le nombre de mots qui commencent avec le préfixe correspondant.
À l’aide de cette structure, on peut répondre en temps constant à la question du nombre de mots précédents dont le mot actuel est un préfixe.

◊h3{Factorisation}

Dans le problème ◊out-link["https://open.kattis.com/problems/stringfactoring"]{“String Factoring”}, l’objectif est de trouver la factorisation la plus courte d’une chaîne de caractères.
Les opérations autorisées sont la concaténation de deux factorisations et la répétition d’un sous-mot un nombre arbitraire de fois.
Par exemple, ◊math{(AB)^2C} est une factorisation de longueur 3 de la chaîne ◊math{ABABC}.

Une approche vorace, qui consisterait à factoriser itérativement la plus courte sous-période du mot, n’est pas optimale.
Cela conduirait par exemple à factoriser d’abord ◊math{POPPOP} en ◊math{POP^2OP}, après quoi plus aucune autre factorisation ne serait possible, alors que l’optimal est ◊math{(POP)^2}.

Cette remarque nous conduit à considérer une approche en programmation dynamique.
Supposons qu’on veuille factoriser un mot ◊math{w}.
Notons ◊math{F(i, j)} la plus courte factorisation du sous-mot ◊math{w_iw_{i+1}...w_j}.
Cette valeur peut être calculée récursivement à partir de celle d’autres sous-mots plus petits:

◊display-math{
    F(i, j) = \min\begin{cases}
        F(i, k) + F(k + 1, j) \quad \text{pour } k \in \{i + 1, ..., j -1\},\\
        F(i, i + n - 1) \quad \text{si } n \text{ est une période de } w_iw_{i+1}...w_j.
    \end{cases}
}

Le premier cas de cette équation correspond à la concaténation de deux factorisations, tandis que le second cas correspond à la factorisation d’une période.
Cette approche donne un algorithme en ◊math{O(N^4)}, suffisant pour valider le problème.

◊h3{Plus long préfixe commun}

Dans ◊out-link["https://open.kattis.com/problems/automatictrading"]{“Automatic Trading”}, l’objectif est de calculer le plus long préfixe commun à 100 000 paires de suffixes piochées dans un même mot de 100 000 caractères.
Le fait que les suffixes soient tous choisis dans le même mot pourrait nous orienter vers une solution à base de ◊out-link["https://cp-algorithms.com/string/suffix-array.html"]{table des suffixes}.
Une approche naïve suffit cependant, en particulier parce que le nombre de paires données en entrée est largement inférieur au nombre total de paires possibles.
Il faut toutefois prendre garde à la lecture de l’entrée qui est de grande taille: utilisez C ou C++ avec des fonctions efficaces de lecture de l’entrée.

◊link-h2["problems"]{Problèmes}

Nous nous intéressons désormais à une série de problèmes portant sur des graphes, ou pouvant être modélisés avec des graphes.
Les problèmes ci-dessous sont en ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/railroad2"]{“Railroad”} — Déterminez si un circuit sans cul-de-sac peut être construit avec un nombre fixé de croisements et d’aiguillages.}
    ◊li{◊out-link["https://open.kattis.com/problems/elevatortrouble"]{“Elevator Trouble”} — Trouvez le minimum de pressions sur un bouton nécessaire pour atteindre un certain étage avec un ascenseur au fonctionnement inhabituel.}
    ◊li{◊out-link["https://open.kattis.com/problems/grid"]{“Grid”} — Calculez le chemin le plus court à travers une grille dans laquelle chaque case indique la distance du prochain déplacement.}
    ◊li{◊out-link["https://open.kattis.com/problems/breakingbad"]{“Breaking Bad”} — Divisez une liste d’achats en deux parties de sorte à éviter d’acheter simultanément des combinaisons d’items suspects.}
    ◊li{◊out-link["https://open.kattis.com/problems/cantinaofbabel"]{“Cantina of Babel”} — Parmi un ensemble de personnes parlant et comprenant des langues différentes, identifiez le plus grand groupe de personnes capable de converser.}
}
