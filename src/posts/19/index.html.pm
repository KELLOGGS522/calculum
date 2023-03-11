#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{1e37f515-14ea-4d1d-ab35-1dbb7677f4c8}
◊define-meta[title]{Rencontre #17: πrogrammation}
◊define-meta[date]{2023-03-15T17:00:00-05:00}
◊define-meta[summary]{En l’honneur de la journée de π, nous consacrerons cette séance à l’écriture de programmes pour approcher sa valeur à l’aide de méthodes diverses.}

En l’honneur de la ◊out-link["https://en.wikipedia.org/wiki/Pi_Day"]{journée de ◊math{\pi}}, le 14 mars, la séance d’aujourd’hui sera consacrée à l’écriture de programmes pour approximer la valeur de la constante d’Archimède.
Les programmes doivent afficher sur la sortie standard une approximation de ◊math{\pi}, un argument du programme permettant de régler la précision.
Plutôt que de viser la rapidité ou l’efficacité du calcul, nous proposons de valoriser le caractère inhabituel, élégant ou original de la méthode utilisée.

◊em{Il y aura de la tarte pour stimuler nos neurones!}

Voici quelques pistes pour commencer votre réflexion.
Soyez créatifs!
Nous présenterons nos résultats la semaine prochaine.

◊ul[#:class "long-list"]{
    ◊li{
        Plusieurs ◊strong{méthodes numériques} permettent d’approcher ◊math{\pi}.
        Un exemple est l’◊out-link["https://en.wikipedia.org/wiki/Gauss%E2%80%93Legendre_algorithm"]{algorithme de Gauss-Legendre}, basé sur une approche itérative.
        Plus surprenant, la ◊out-link["https://en.wikipedia.org/wiki/Mandelbrot_set#Pi_in_the_Mandelbrot_set"]{fractale de Mandelbrot} peut également être utilisée pour calculer les décimales de ◊math{\pi}.
        Il y a quelques années, ◊out-link["https://www.3blue1brown.com/lessons/clacks-solution"]{3blue1brown a présenté une méthode} permettant de calculer une approximation de ◊math{\pi} en utilisant les lois de conservation de la ◊out-link["https://fr.wikipedia.org/wiki/Quantit%C3%A9_de_mouvement"]{quantité de mouvement}.
        Si vous avez accès à un ordinateur quantique, l’◊out-link["https://qiskit.org/textbook/ch-demos/piday-code.html"]{algorithme d’estimation de phase} peut être utilisé pour approcher ◊math{\pi}.
    }
    ◊li{
        L’approximation de ◊math{\pi} est un exemple classique d’◊strong{approche ◊out-link["https://en.wikipedia.org/wiki/Monte_Carlo_method#Overview"]{Monte Carlo}}.
        Placez des points aléatoirement à l’intérieur d’un carré unitaire, et la proportion de points à l’intérieur du disque unitaire tendra vers ◊math{\pi/4} quand le nombre de points augmente.
        Une autre approche du même type est celle de l’◊out-link["https://en.wikipedia.org/wiki/Buffon%27s_needle_problem"]{aiguille de Buffon}.
        Lancez aléatoirement des aiguilles de longueur 1 sur un parquet de planches parallèles de largeur 2, et la proportion d’aiguilles qui tombent sur deux planches tendra vers ◊math{1/\pi} quand le nombre d’aiguilles augmente.
    }
    ◊li{
        Nous pourrions peut-être utiliser un ◊strong{◊out-link["https://en.wikipedia.org/wiki/Cellular_automaton"]{automate cellulaire}}.
        Si nous parvenions à concevoir un automate à deux dimensions qui fait grandir un cercle, il suffirait de calculer à chaque étape le ratio entre le nombre de cellules actives et leur diamètre pour obtenir des approximations de ◊math{\pi}.
        D’autres méthodes moins directes pourraient aussi être fructueuses.
        Essayons d’intégrer des règles de transition probabilistes, d’utiliser une autre structure que la grille rectangulaire habituelle, ou d’autres variations.
        Il y a moins de résultats connus pour cette approche, alors innovons!
    }
}

◊em{(Si vous vous questionnez sur l’intérêt d’approcher ◊math{\pi} avec autant de précision, sachez que ◊out-link["https://github.com/philipl/pifs"]{◊math{\pi} peut être utilisé comme un système de fichiers}.
Ainsi, en calculant beaucoup de décimales, vous pourriez avoir accès à des secrets de l’Univers!
En supposant que ◊math{\pi} soit bel et bien un ◊out-link["https://en.wikipedia.org/wiki/Normal_number"]{nombre normal}, bien sûr.)}
