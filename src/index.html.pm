#lang pollen
◊; vim: set spelllang=fr:

◊header{
    ◊h1{Calculum}
    ◊h2{Club d’algorithmique compétitive universitaire de l’Université de Montréal}
}

Le club se réunit chaque semaine autour de nouveaux ◊em{casse-têtes informatiques} qui feront appel à vos connaissances en algorithmique, en logique et en programmation.
Outre le plaisir à les résoudre, ces casse-têtes offrent un entraînement aux compétitions de programmation (◊a[#:href "https://icpc.global"]{ICPC}, ◊a[#:href "https://csgames.org"]{CS Games}, ◊a[#:href "https://codingcompetitions.withgoogle.com/codejam"]{Code Jam}, ◊a[#:href "https://facebook.com/codingcompetitions/hacker-cup"]{Hacker Cup}, ◊a[#:href "https://adventofcode.com"]{Advent of Code}, ◊a[#:href "https://en.wikipedia.org/wiki/Category:Programming_contests"]{…}) et aux questions posées en entrevue par certaines grandes compagnies.
Que vous soyez simple curieux, débutant ou déjà aguerri, soyez les bienvenus au Calculum!

◊h2{
    Activités
    ◊a[
        #:href (local-url "feeds/posts.xml")
        #:class "feed-link icon-before icon-rss"
    ]{Flux RSS}
}

◊(define post-list (list-posts "posts.ptree"))
◊ol[#:class "post-list"]{
    ◊for/splice[[(post post-list)]]{
        ◊li{◊a[#:href (local-url post)]{
            ◊article[#:class (if (post-upcoming? post) "upcoming" "")]{
                ◊header{
                    ◊h3{
                        ◊span{◊post-title[post]}
                        ◊datetime[#:datetime (post-iso-date post)]{le ◊post-human-date[post]}
                    }
                    ◊post-summary[post]
                }
            }
        }}
    }
}

◊footer{
    Questions, commentaires, suggestions:◊br{}
    ◊span[#:class "code"]{matteo.delabre+calculum [at] umontreal.ca}
}
