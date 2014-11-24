function url-encode; {
    setopt extendedglob
    echo "${${(j: :)@}//(#b)(?)/%$[[##16]##${match[1]}]}"
}

# run program, leaving terminal window open
:() {
    (setsid "$@" &> /dev/null &);
}
# run program, closing current terminal on valid command
::() {
    type "$1" && (setsid "$@" &> /dev/null &) && exit;
}

export WEB_FORK_COMMAND=":"
export #WEB_FORK_COMMAND="::"

:w() {
    $WEB_FORK_COMMAND xdg-open "http://en.wikipedia.org/w/index.php?search=`url-encode "${(j: :)@}"`"
}
:yt() {
    $WEB_FORK_COMMAND xdg-open "https://www.youtube.com/results?search_query=`url-encode "${(j: :)@}"`"
}
:g() {
    $WEB_FORK_COMMAND xdg-open "https://www.google.com/search?q=`url-encode "${(j: :)@}"`"
}
:gi() {
    $WEB_FORK_COMMAND xdg-open "http://www.duckduckgo.com/?q=!gi+`url-encode "${(j: :)@}"`"
}
:gh() {
    $WEB_FORK_COMMAND xdg-open "https://github.com/search?q=`url-encode "${(j: :)@}"`"
}
:s() {
    $WEB_FORK_COMMAND xdg-open "http://www.duckduckgo.com/?q=`url-encode "${(j: :)@}"`"
}
:d() {
    $WEB_FORK_COMMAND xdg-open "http://www.duckduckgo.com/?q=!d+`url-encode "${(j: :)@}"`"
}
:t() {
    $WEB_FORK_COMMAND xdg-open "http://www.duckduckgo.com/?q=!t+`url-encode "${(j: :)@}"`"
}
