$INPUT = Read-Host "Enter youtube search term:"
$SEARCH_TERM = $INPUT -replace " ","%20"
browser.ps1 "http://www.youtube.com/results?search_query=$SEARCH_TERM"
