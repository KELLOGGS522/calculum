#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{f124e088-fba7-4510-9b4e-79fd36ccd375}
◊define-meta[title]{Rencontre hebdomadaire du club #2}
◊define-meta[date]{2022-09-29T17:30:00-04:00}
◊define-meta[summary]{Dans cette deuxième rencontre, nous discuterons des solutions de la série de problèmes géométriques. Nous travaillerons ensuite sur une nouvelle série de problèmes liés aux chaînes de caractères.}

◊in-link[""]{← Retour à l’accueil}

◊h1{◊post-title[]}

Dans cette deuxième rencontre, nous commencerons par discuter des solutions de la série de problèmes sur la géométrie.
N’hésitez pas à venir présenter votre solution!
La plupart des problèmes peuvent être résolus de plusieurs façons différentes, et il est toujours instructif de comparer ces solutions.

◊h2{Problèmes}

Nous travaillerons sur la série de problèmes suivante, sur la thématique des chaînes de caractères.
Les problèmes sont en ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/avion"]{◊em{“Avion”}} — Identifiez, parmi un ensemble de chaînes de caractères, celles qui contiennent une occurrence d’un motif prédéfini.}
    ◊li{◊out-link["https://open.kattis.com/problems/pebblesolitaire"]{◊em{“Pebble Solitaire”}} — Dans cette variante du ◊out-link["https://fr.wikipedia.org/wiki/Solitaire_(casse-t%C3%AAte)"]{solitaire} à une dimension, vous devez calculer une séquence de coups permettant d’éliminer le plus de pions possible.}
    ◊li{◊out-link["https://open.kattis.com/problems/bing"]{◊em{“Bing It On”}} — On vous fournit une liste de mots. Pour chacun de ces mots, calculez le nombre de mots précédents dont il est un préfixe.}
    ◊li{◊out-link["https://open.kattis.com/problems/stringfactoring"]{◊em{“String Factoring”}} — Trouvez la meilleure façon de compresser les répétitions dans une chaîne de caractères.}
    ◊li{◊out-link["https://open.kattis.com/problems/automatictrading"]{◊em{“Automatic Trading”}} — Calculez le plus long préfixe commun à des paires de suffixes d’une chaîne de caractères.}
}

◊h2{Ressources}

Voici quelques ressources utiles pour lire et pratiquer sur le sujet des chaînes de caractères:

◊ul[#:class "long-list"]{
    ◊li{la section ◊out-link["https://cp-algorithms.com/string/string-hashing.html"]{◊em{“String Processing”}} du ◊out-link["https://cp-algorithms.com/"]{site web cp-algorithms.com} recense des algorithmes de chaînes de caractères et des problèmes avec des implémentations en C++;}
    ◊li{le chapitre 2 du ◊out-link["https://umontreal.on.worldcat.org/oclc/945921847"]{livre ◊em{“Programmation efficace”}} de C. Dürr et J.-J. Vie traite d’algorithmes pour les chaînes de caractères et propose des implémentations en Python;}
    ◊li{les sections 14.1 et 14.2 du ◊out-link["https://umontreal.on.worldcat.org/oclc/1154565111"]{livre ◊em{“Guide to Competitive Programming”}} de A. Laaksonen couvrent également les algorithmes essentiels pour ce sujet;}
    ◊li{la section ◊em{“String Algorithms”} du ◊out-link["https://cses.fi/problemset/"]{site CSES} regroupe des problèmes classiques de chaînes de caractères auxquels vous pouvez vous essayer (il suffit de ◊out-link["https://cses.fi/register/"]{créer un compte} pour pouvoir soumettre).}
}
