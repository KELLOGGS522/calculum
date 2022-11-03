#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{950504ce-43e7-4281-b745-a3d8225ca591}
◊define-meta[title]{Rencontre #6: Programmation dynamique}
◊define-meta[date]{2022-11-03T17:30:00-04:00}
◊define-meta[summary]{Nous reprendrons nos rencontres hebdomadaires en commençant par discuter des solutions aux problèmes de graphes. Nous débuterons ensuite une nouvelle série de problèmes sur la programmation dynamique.}

Nous reprendrons nos rencontres hebdomadaires en commençant par discuter des solutions aux ◊in-link["posts/5/#problems"]{problèmes de graphes}.
Nous débuterons ensuite une nouvelle série de ◊a[#:href "#problems"]{problèmes utilisant la programmation dynamique}.

◊link-h2["problems"]{Problèmes}

Nous nous intéressons à une série de problèmes portant pouvant se résoudre avec la technique dite de programmation dynamique.
Voyez ◊a[#:href "#resources"]{ci-dessous} pour quelques explications à ce sujet.
Les problèmes de la série sont en ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/commercials"]{“Radio Commercials”} — Identifiez l’intervalle de temps pendant lequel la diffusion d’une publicité est susceptible de rapporter le plus de bénéfice.}
    ◊li{◊out-link["https://open.kattis.com/problems/tritiling"]{“Tri Tiling”} — Combien de façons différentes y a-t-il de remplir un rectangle ◊math{3 \times n} avec des tuiles de taile ◊math{2 \times 1}?}
    ◊li{◊out-link["https://open.kattis.com/problems/narrowartgallery"]{“Narrow Art Gallery”} — Calculez la meilleure façon de fermer ◊math{k} pièces d’un musée, de sorte que les visiteurs puissent toujours y cheminer et de sorte que la valeur des pièces restant ouvertes soit maximale.}
    ◊li{◊out-link["https://open.kattis.com/problems/goodcoalition"]{“Good Coalition”} — Formez une coalition majoritaire de partis qui a le plus de chance de mener son mandat à son terme.}
    ◊li{◊out-link["https://open.kattis.com/problems/increasingsubsequence"]{“Increasing Subsequence”} — Trouvez la plus longue sous-séquence d’entiers strictement croissante.}
}

◊link-h2["resources"]{Explications et ressources}

La programmation dynamique est une technique permettant de ◊strong{rechercher une solution optimale} parmi un ensemble de possibilités, de façon plus efficace que par une simple exploration exhaustive
(comme nous avons pu le faire pour le problème ◊out-link["https://open.kattis.com/problems/pebblesolitaire"]{“Pebble Solitaire”}, par exemple).

C’est une technique importante pour la programmation compétitive, et fort utile pour la conception d’algorithmes par ailleurs!
La programmation dynamique demande un mode de pensée particulier, qui s’acquiert par la pratique.

◊em{(Note amusante: Le nom de “programmation dynamique” a été choisi seulement pour être un ◊em{buzzword} et n’a pas vraiment de sens, selon ◊out-link["https://fr.wikipedia.org/wiki/Programmation_dynamique#Histoire"]{les propres mots de l’inventeur du terme}, Richard Bellman.)}

Pour qu’un problème se prête à de la programmation dynamique, une première condition est qu’il doit posséder une ◊strong{structure récursive}.
Cela signifie que chaque objet du problème est une combinaison de plus petits objets similaires, par exemple:

◊ul{
    ◊li{un arbre binaire est formé de deux sous-arbres et d’une racine;}
    ◊li{une séquence est formée de deux moitiés concaténées ensemble;}
    ◊li{un ensemble de ◊math{n} éléments est formé d’un ensemble de ◊math{n-1} éléments auquel on ajoute un nouvel élément.}
}

Une deuxième condition est que ◊strong{toute solution optimale doit être formée en combinant des solutions optimales} elles aussi.
(Cette condition est appelée le ◊em{principe d’optimalité de Bellman}.)
Par exemple, le plus court chemin pour se rendre d’un point A à un point B est la concaténation du plus court chemin pour se rendre du point A à un point intermédiaire I, puis du plus court chemin du point I au point B.

Avec ces deux conditions, si l’on connaît deux solutions optimales, alors on peut en former une nouvelle en combinant ces deux.
La programmation dynamique dite ◊em{“bottom-up”} consiste à démarrer des plus petites solutions puis à les combiner pour construire progressivement des solutions plus grandes, tout ◊strong{en gardant les solutions intermédiaires en mémoire}.
Il est également possible de procéder à rebours, en décomposant progressivement le problème initial en sous-problèmes: c’est la programmation dynamique dite ◊em{“top-down”}.

Pour en apprendre plus sur le sujet de la programmation dynamique, jetez un œil aux ressources suivantes:

◊ul[#:class "long-list"]{
    ◊li{la section 1.6.5 du ◊out-link["https://umontreal.on.worldcat.org/oclc/945921847"]{livre “Programmation efficace”} donne une autre introduction au concept de programmation dynamique, ainsi que des astuces utiles pour l’implémenter en Python;}
    ◊li{la vidéo ◊out-link["https://www.youtube.com/watch?v=aPQY__2H3tE"]{“5 Simple Steps for Solving Dynamic Programming Problems”} de ◊em{Reducible} passe à travers deux exemples classiques en détail et tire les principes généraux utiles à la programmation dynamique;}
    ◊li{le chapitre 6 du ◊out-link["https://umontreal.on.worldcat.org/oclc/1154565111"]{livre “Guide to Competitive Programming”} de A. Laaksonen entre dans plus de détails et détaille des exemples classiques de programmation dynamique, implémentés en C++;}
    ◊li{la section ◊out-link["https://cp-algorithms.com/dynamic_programming/divide-and-conquer-dp.html"]{“Dynamic Programming”} du ◊out-link["https://cp-algorithms.com/"]{site web cp-algorithms.com} traite de sujets plus avancés en programmation dynamique.}
}
