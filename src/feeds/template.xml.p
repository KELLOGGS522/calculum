◊; vim: set ft=pollen:
<?xml version="1.0" encoding="utf-8"?>
◊(define post-list (list-posts (select-from-metas 'posts (current-metas))))
◊(->html
    ◊feed[#:xmlns "http://www.w3.org/2005/Atom"]{
        ◊title{◊post-title[]}
        ◊subtitle{◊post-subtitle{}}
        ◊link[#:href (full-url here) #:rel "self"]
        ◊link[#:href site-root]
        ◊id{◊post-uuid[]}
        ◊updated{◊post-iso-date[(car post-list)]}
        ◊author{◊name{Mattéo Delabre}}
        ◊for/splice[[(post post-list)]]{
            ◊entry{
                ◊title{◊post-title[post]}
                ◊link[#:href (full-url post)]
                ◊id{◊post-uuid[post]}
                ◊updated{◊post-iso-date[post]}
                ◊summary{◊post-summary[post]}
            }
        }
    }
)
