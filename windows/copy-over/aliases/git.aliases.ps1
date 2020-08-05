function EDIT_GIT_ALIASES_FILE {editor $env:MY_ROOT_ALIASES_DIR\git.aliases}
Set-Alias -Name git.aliases -Value EDIT_GIT_ALIASES_FILE

function GIT_ADD {git add $args[0]}
Set-Alias -Name ga -Value GIT_ADD

function GIT_BRANCH {git branch}
Set-Alias -Name gb -Value GIT_BRANCH

function GIT_COMMIT {git commit}
Set-Alias -Name gcommit -Value GIT_COMMIT

function GIT_CHECKOUT_BRANCH {git checkout -b}
Set-Alias -Name gcb -Value GIT_CHECKOUT_BRANCH

function GIT_CHECKOUT {git checkout}
Set-Alias -Name gco -Value GIT_CHECKOUT

function GIT_PULL {git pull}
Set-Alias -Name gpull -Value GIT_PULL

function GIT_PUSH {git push --force}
Set-Alias -Name gpush -Value GIT_PUSH

function GIT_STATUS {git status}
Set-Alias -Name gst -Value GIT_STATUS

function GIT_PUSH_UPSTREAM {git.push.upstream}
Set-Alias -Name gpsup -Value GIT_PUSH_UPSTREAM

function GIT_SAVE {
    git add .
    git commit -m "changes"
    git push
}
Set-Alias -Name gsave -Value GIT_SAVE