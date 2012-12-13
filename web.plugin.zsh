function url-encode; {
    setopt extendedglob
    echo "${${(j: :)@}//(#b)(?)/%$[[##16]##${match[1]}]}"
}

:w() {
    xdg-open "http://en.wikipedia.org/w/index.php?search=`url-encode "${(j: :)@}"`" &> /dev/null
}
:yt() {
    xdg-open "https://www.youtube.com/results?search_query=`url-encode "${(j: :)@}"`" &> /dev/null
}
:g() {
    xdg-open "https://www.google.com/search?q=`url-encode "${(j: :)@}"`" &> /dev/null
}
:gi() {
    xdg-open "http://www.duckduckgo.com/?q=!gi+`url-encode "${(j: :)@}"`" &> /dev/null
}
:gh() {
    xdg-open "https://github.com/search?q=`url-encode "${(j: :)@}"`" &> /dev/null
}
:s() {
    xdg-open "http://www.duckduckgo.com/?q=`url-encode "${(j: :)@}"`" &> /dev/null
}
:d() {
    xdg-open "http://www.duckduckgo.com/?q=!d+`url-encode "${(j: :)@}"`" &> /dev/null
}
:t() {
    xdg-open "http://www.duckduckgo.com/?q=!t+`url-encode "${(j: :)@}"`" &> /dev/null
}

