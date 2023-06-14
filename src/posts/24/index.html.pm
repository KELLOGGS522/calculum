#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{04e0f895-46a9-48e1-9be0-c5281b6a2885}
◊define-meta[title]{Rencontre #21: Cryptanalyse}
◊define-meta[date]{2023-05-31T17:30:00-04:00}
◊define-meta[summary]{Nous étudions cette semaine une série de problèmes qui demande de déchiffrer ou de décrypter un ensemble de chiffrements.}

Nous étudions cette semaine une série de problèmes de ◊out-link["https://fr.wikipedia.org/wiki/Cryptanalyse"]{cryptanalyse}.
Chaque problème introduit un chiffrement différent.
Les premiers problèmes demandent simplement de déchiffrer des messages en connaissant la clé de chiffrement.
Dans les problèmes plus avancés, il faut trouver une façon efficace pour briser le code.

◊link-h2["problems"]{Problèmes}

Les problèmes suivants sont triés par ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/drunkvigenere"]{“Drunk Vigenère”} — Déchiffrez un message avec le ◊out-link["https://fr.wikipedia.org/wiki/Chiffre_de_Vigenère"]{chiffre de Vigenère.}}
    ◊li{◊out-link["https://open.kattis.com/problems/reverserot"]{“Reverse Rot”} — Chiffrez un message avec une variante du ◊out-link["https://fr.wikipedia.org/wiki/Chiffrement_par_décalage"]{chiffre de César.}}
    ◊li{◊out-link["https://open.kattis.com/problems/playfair"]{“Playfair Cipher”} — Chiffrez un message en utilisant le ◊out-link["https://fr.wikipedia.org/wiki/Chiffre_de_Playfair"]{chiffre de Playfair}.}
    ◊li{◊out-link["https://open.kattis.com/problems/crackingthecode"]{“Cracking the Code”} — Brisez un ◊out-link["https://fr.wikipedia.org/wiki/Chiffrement_par_substitution"]{chiffrement par substitution} en connaissant un texte clair ainsi qu’ensemble de messages chiffrés dont l’un correspond au clair.}
    ◊li{◊out-link["https://open.kattis.com/problems/overthehill2"]{“Over the Hill”} — Brisez le ◊out-link["https://fr.wikipedia.org/wiki/Chiffre_de_Hill"]{chiffre de Hill} en connaissant un ensemble de textes clairs et leur correspondant chiffré.}
}
