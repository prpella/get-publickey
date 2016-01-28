if [[ $# = 0 ]]; then
    liste="$GITHUBNAME"
elif [[ $1 = "-h" || $1 = "-help" ]]; then
    echo "usage: pk.sh [GithubName]"
    echo "add \$GITHUBNAME=[yourGithubName] to .bashrc to use pk.sh without argument" 
    exit 0
else
    liste="$@"
fi

for name in $liste
do
    curl --fail https://github.com/$name.keys
    if [[ $? != 0 ]]; then
        echo "Sorry, can't find $name on Github"
    fi 

done
