#lang pollen
◊; vim: set spelllang=fr:
◊define-meta[uuid]{8d755039-e340-49e5-baef-efc566ac6fa1}
◊define-meta[title]{Rencontre hebdomadaire du club #1}
◊define-meta[date]{2022-09-22T17:30:00-04:00}
◊define-meta[summary]{Cette première rencontre a été l’occasion de poursuivre la discussion sur les activités du club. La première série de problèmes y a également présentée.}

◊link-h2["activities"]{Activités}

Pour commencer, nous avons poursuivi la discussion entamée la semaine passée sur les activités.
Les activités suivantes ont été proposées (par ordre de l’intérêt exprimé).

◊ul[#:class "long-list"]{
    ◊li{◊em{Rencontres hebdomadaires:}
        Une série de problèmes de différentes difficultés sur une même thématique
        (tirés de ◊out-link["https://open.kattis.com/"]{Kattis},
        ◊out-link["https://leetcode.com/"]{LeetCode},
        ◊out-link["https://codeforces.com/"]{Codeforces}, …) est présentée.
        Des groupes de deux ou plus sont formés pour travailler sur ces problèmes pendant la séance.
        La semaine suivante, les groupes ayant résolu un problème sont invités à présenter leur solution.
    }
    ◊li{◊em{Ateliers/présentations:}
        Données occasionnellement par des membres du club qui souhaitent partager leurs connaissances
        sur des algorithmes, des techniques, des langages, …
    }
    ◊li{◊em{Compétitions internes:}
        Organisées ponctuellement selon les préférences des membres.
        Différents types de compétitions ont été évoqués:
        ◊ul{
            ◊li{De type ICPC, en temps chronométré avec une série de problèmes;}
            ◊li{Programme le plus performant pour un problème donné (sur plusieurs jours);}
            ◊li{Battlecode : réutiliser les ◊out-link["https://play.battlecode.org/resources"]{sujets des années précédentes};}
            ◊li{Core War;}
            ◊li{Jeux de cartes (ex. jeu du 10).}
        }
    }
}

◊link-h2["problems"]{Problèmes}

La première série de problèmes, ayant pour thématique la géométrie, a été introduite.

◊ul[#:class "long-list"]{
    ◊li{◊out-link["https://open.kattis.com/problems/pieceofcake2"]{“Piece of Cake!”} — Un gâteau en forme de parallélépipède a été divisé en quatre parts rectilignes. Calculez le volume de la plus grande des parts.}
    ◊li{◊out-link["https://open.kattis.com/problems/triangleornaments"]{“Triangle Ornaments”} — On suspend une guirlande de triangles, chaque triangle étant attaché par l’un de ses sommets. Étant données la mesure des côtés de chaque triangle, déterminez la largeur qu’ils occupent.}
    ◊li{◊out-link["https://open.kattis.com/problems/segmentintersection"]{“Line Segment Intersection”} — Calculez l’intersection de deux segments du plan dont on vous donne les coordonnées cartésiennes des extrémités. Attention aux cas particuliers!}
}

Nous avons commencé à travailler sur ces problèmes en groupes de deux personnes.
Les solutions seront présentées la semaine prochaine.
