◊; vim: set ft=pollen:
◊(current-pagetree (get-pagetree "../../posts.ptree"))
<!DOCTYPE html>
◊(->html
    ◊html[#:lang "fr"]{
        ◊head{
            ◊meta[#:charset "utf-8"]
            ◊title{◊(post-title) — Calculum}
            ◊link[#:rel "stylesheet" #:href "/style.css"]
            ◊link[#:rel "canonical" #:href (full-url here)]
            ◊meta[#:name "viewport" #:content "width=device-width, initial-scale=1"]
        }
        ◊body{
            ◊nav[#:class "post-nav"]{
                ◊span{◊when/splice[(next here)]{
                    ◊in-link[(next here)]{← Précédent}
                }}
                ◊span{◊in-link[""]{↑ Accueil}}
                ◊span{◊when/splice[(previous here)]{
                    ◊in-link[(previous here)]{Suivant →}
                }}
            }

            ◊header[#:class "post-header"]{
                ◊h1{◊post-title[]}
                ◊datetime[#:datetime (post-iso-date)]{le ◊post-human-date[]}
                ◊address{par ◊post-author[]}
            }

            ◊doc
            ◊script[#:src "/mathjax/tex-chtml.js"]
        }
    }
)
