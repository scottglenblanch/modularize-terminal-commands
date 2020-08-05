$SEARCH_TERM = [string]$args -replace " ","%20"

chrome.ps1 "http://www.google.com/search?q=$SEARCH_TERM"
