#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{4976cda2-483a-4af3-9f4c-7c4c50b2cf04}
◊define-meta[title]{Rencontre #16: Algorithmes voraces}
◊define-meta[date]{2023-03-08T17:00:00-05:00}
◊define-meta[summary]{Nous étudierons cette semaine une série de problèmes pouvant être résolus en employant une approche vorace.}
◊define-meta[author]{Mattéo Delabre}

Nous étudierons cette semaine une série de problèmes pouvant être résolus en employant des approches de type vorace (aussi appelée gloutonne ou ◊em{greedy}).
Informellement, cette classe d’approches consiste à résoudre un problème en construisant une solution progressivement étape par étape, sans jamais revenir en arrière, à l’aide d’un critère local d’optimalité.

◊link-h2["resources"]{Ressources}

Voici quelques ressources qui pourront vous aider pour les problèmes.

◊ul{
    ◊li{Section 3.4 de ◊out-link["https://cpbook.net"]{“Competitive Programming”} par S. Halim et al.}
    ◊li{Section 1.6.4 et chapitre 5 de ◊out-link["https://umontreal.on.worldcat.org/oclc/945921847"]{“Programmation efficace”} par C. Dürr et J.-J. Vie.}
    ◊li{Section 4.2 de ◊out-link["https://umontreal.on.worldcat.org/oclc/1154565111"]{“Guide to Competitive Programming”} par A. Laaksonen.}
}

◊link-h2["problems"]{Problèmes}

Les problèmes suivants sont triés par ordre croissant de difficulté.

◊ol[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/minimumscalar"]{“Minimum Scalar Product”} — Trouvez une façon de permuter les coordonnées de deux vecteurs pour minimiser leur produit scalaire.}
    ◊li{◊out-link["https://open.kattis.com/problems/birds"]{“Birds on a Wire”} — Un ensemble d’oiseaux se tiennent sur un câble. Combien d’autres oiseaux peuvent venir les rejoindre sans que deux d’entre eux ne soient trop proches l’un de l’autre?}
    ◊li{◊out-link["https://open.kattis.com/problems/virus"]{“Virus Replication”} — Étant donnée une séquence d’ADN avant et après une infection, déterminez la plus courte séquence qui a dû y être insérée par un virus.}
    ◊li{◊out-link["https://open.kattis.com/problems/ballotboxes"]{“Distributing Ballot Boxes”} — Déterminez une façon de distribuer des urnes entre des bureaux de vote de sorte à minimiser le nombre maximum de personnes devant voter dans la même urne.}
    ◊li{◊out-link["https://open.kattis.com/problems/messages"]{“Messages From Outer Space”} — À partir d’une chaîne ◊math{S}, trouvez le plus grand ensemble de mots du dictionnaire qui apparaissent sans chevauchement dans ◊math{S}.}
    ◊li{◊out-link["https://open.kattis.com/problems/grass"]{“Watering Grass”} — Choisissez le moins d’arroseurs possible qui permettent de couvrir entièrement une bande d’herbe.}
}
