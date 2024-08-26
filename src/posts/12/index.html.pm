#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{c563e289-4647-4244-8772-f6d0b8bed9c4}
◊define-meta[title]{Rencontre #10: Problèmes de l’ICPC 2021 (suite)}
◊define-meta[date]{2022-12-08T17:30:00-05:00}
◊define-meta[summary]{Pour clore la session d’automne, nous avons présenté les solutions des problèmes de l’ICPC 2021 étudiés la semaine précédente.}
◊define-meta[author]{Mattéo Delabre}

Pour clore la session d’automne, nous avons présenté les solutions des ◊in-link["posts/11/#problems"]{problèmes de l’ICPC 2021} étudiés la semaine précédente.
Vous pouvez trouver ci-dessous des éléments de solution pour chacun de ces problèmes.
Rendez-vous en janvier pour la reprise de nos rencontres!

◊link-h2["solutions"]{Solutions aux problèmes de l’ICPC 2021}

◊link-h3["reversiblecyclic"]{Reversibly Cyclic Strings}

Une chaîne ◊math{s} est dite ◊emph{inversement cyclique} lorsque chaque sous-chaîne de ◊math{s} apparaît inversée dans l’une des permutations cycliques de ◊math{s}.
Par exemple, ◊math{aba} est inversement cyclique, alors que ◊math{abc} ne l’est pas, puisque ◊math{ba}, l’inverse de ◊math{ab}, n’apparaît dans aucune permutation cyclique de ◊math{abc}.
Le problème ◊out-link["https://open.kattis.com/problems/reversiblecyclic"]{“Reversibly Cyclic Strings”} demande de déterminer si une chaîne donnée en entrée respecte ce critère.

Une stratégie, pas assez efficace, consiste à énumérer toutes les ◊math{O(n^2)} sous-chaînes de l’entrée pour vérifier si chacune d’elles respecte le critère.
Pour obtenir un algorithme en ◊math{O(n)}, il suffit d’observer qu’◊em{une chaîne ◊math{s} est inversement cyclique si et seulement si l’inverse de ◊math{s} est égal à l’une des permutations cycliques de ◊math{s}}.

◊link-h3["tictactoecounting"]{Tic Tac Toe Counting}

Dans ◊out-link["https://open.kattis.com/problems/tictactoecounting"]{“Tic Tac Toe Counting”}, une configuration de ◊em{tic tac toe} est donnée en entrée.
L’objectif est de calculer, à partir de cette configuration, le nombre de séquences de coups qui font gagner les ◊tt{X} et le nombre de celles qui font gagner les ◊tt{O}.
Le programme doit aussi signaler si la configuration donnée ne peut pas possiblement être atteinte à partir d’un tableau vide où les ◊tt{X} jouent en premier.
Voici trois exemples de configurations initiales invalides:

◊pre["
OXX  XXX  OOO
XOX  ...  XXX
OXO  ...  ...
"]

Ce problème peut être résolu en ◊em{énumérant exhaustivement} toutes les séquences de coups possibles.
Lorsqu’une configuration gagnante est atteinte, on incrémente le nombre de séquences de coups qui font gagner l’un ou l’autre des joueurs.
Notez qu’il est possible d’atteindre plusieurs fois la même configuration avec plusieurs séquences de coups distinctes.
Dans ce cas, il faut éviter de répéter le calcul, en mémorisant les réponses en fonction des configurations.

Pour vérifier que la configuration donnée en entrée est valide, il faut évaluer la différence entre le nombre de ◊tt{X} et de ◊tt{O}.
Cette valeur indique lequel des deux joueurs vient de placer une marque.
Si elle est nulle, alors les ◊tt{O} viennent de jouer, donc si les ◊tt{X} sont gagnants alors la configuration est invalide puisque les ◊tt{O} n’auraient pas pu jouer après une victoire de leur adversaire.
De même, si la différence vaut 1, alors les ◊tt{X} viennent de jouer, donc les ◊tt{O} ne peuvent pas être gagnants.
Toute autre différence correspond aussi à une configuration invalide.

◊link-h3["riseandfall"]{Rise and Fall}

Un entier est dit ◊em{concave} si les chiffres de sa représentation décimale vont croissant puis décroissant de gauche à droite.
Dans ◊out-link["https://open.kattis.com/problems/riseandfall"]{“Rise and Fall”}, l’objectif est de trouver le plus grand entier ◊em{concave} inférieur ou égal au nombre donné en entrée.

Par définition, la représentation décimale ◊math{d_1d_2...d_l} d’un entier concave peut être séparée en deux sous-chaînes ◊math{d_1...d_k} et ◊math{d_{k+1}...d_l}, de sorte que ◊math{d_i \leq d_{i+1}} si ◊math{1 \leq i < k} et ◊math{d_i \geq d_{i+1}} sinon.
Parmi tous les entiers concaves inférieurs ou égaux à l’entrée, le plus grand est nécessairement celui dont l’indice de séparation ◊math{k} est le plus à gauche.

Cette observation suggère une approche vorace: traverser de gauche à droite la représentation décimale de l’entrée, ◊math{u_1u_2...u_l}, pour trouver ◊math{s} le premier indice tel que ◊math{u_{s} > u_{s+1}}, puis ◊math{r} le premier indice après ◊math{s} tel que ◊math{u_r < u_{r+1}}.
La représentation décimale de la réponse est alors ◊math{u_1u_2...u_r(u_r)^{n}} où ◊math{n = l - r}.

◊link-h3["tetrisgeneration"]{Tetris Generation}

Considérons la règle suivante permettant de générer des chaînes de caractères sur l’alphabet ◊math{\Sigma = \{J,L,S,Z,I,O,T\}:} ◊ol{
    ◊li{Prendre plusieurs permutations de ◊math{\Sigma} et les concaténer.}
    ◊li{Choisir une sous-chaîne de la chaîne obtenue.}
}
Cette règle permet de générer la chaîne ◊em{JJTO} (par exemple comme une sous-chaîne de ◊em{TOIZSLJJTOLSZI}) mais pas la chaîne ◊em{JJTT}.
Dans ◊out-link["https://open.kattis.com/problems/tetrisgeneration"]{“Tetris Generation”}, l’objectif est de déterminer si des chaînes données en entrée ont pu être générées par cette règle.

Pour déterminer si une chaîne ◊math{s} peut être générée par la règle, il suffit de considérer les 7 façons de découper ◊math{s} en fenêtres de taille 7, en permettant que ces fenêtres débordent du début et de la fin de ◊math{s}.
S’il existe un découpage tel qu’aucune fenêtre ne contient de lettre répétée, alors la chaîne peut être générée par la règle.

◊link-h3["failthemall"]{Fail Them All!}

Dans ◊out-link["https://open.kattis.com/problems/failthemall"]{“Fail Them All!”}, ayant les réponses d’un ensemble de ◊math{n} étudiants à un questionnaire de ◊math{k} questions vrai ou faux, il faut déterminer (si cela est possible) une façon de les corriger de sorte que personne n’obtienne plus d’une réponse correcte.
Pour chaque question, un étudiant peut répondre par vrai ou faux, ou s’abstenir.

Il existe ◊math{2^k} manières de corriger le questionnaire, et sachant que ◊math{k} peut atteindre 100, il n’est pas faisable d’essayer toutes ces corrections.
Remarquons cependant que si nous avions déjà commencé à construire une correction et qu’un étudiant avait obtenu une bonne réponse à une question, alors il faudrait s’assurer que ses réponses à toutes les autres questions soient incorrectes.

Autrement dit, si un étudiant a répondu vrai à deux questions ◊math{i, j \in \{1, ..., k\}} et qu’on note ◊math{c_i, c_j \in \{\mathrm{T}, \mathrm{F}\}} la correction de ces questions, alors ◊math{c_i \Rightarrow \neg c_j}.
En fait, l’ensemble des contraintes du problème peut se modéliser par des implications de la sorte.
Ces implications ne contiennent que deux variables chacune, donc le problème se réduit au ◊out-link["https://en.wikipedia.org/wiki/2-satisfiability"]{problème de 2-satisfaisabilité}.

L’utilisation d’un algorithme pour le problème de 2-satisfaisabilité permet de vérifier l’existence d’une correction valide et d’en exhiber une.
Si plusieurs corrections valides existent, le problème demande de trouver la première dans l’ordre lexicographique.
L’utilisation de la technique de ◊out-link["https://en.wikipedia.org/wiki/2-satisfiability#Limited_backtracking"]{retour sur trace limité} permet de contrôler l’ordre dans lequel les solutions sont énumérées et donc de répondre à cette contrainte.
