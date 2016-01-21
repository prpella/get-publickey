if [[ $# = 0 ]]; then
    liste="$GITHUB_NAME"
elif [[ $1 = "-h" ]]; then
    echo "usage: pk.sh [GithubName]"
    echo "add \$GITHUB_NAME=[yourGithubName] to .bashrc to use pk.sh without argument" 
    exit 0
else
    liste="$@"
fi

for name in "$liste"
do
    curl https://github.com/$name.keys
done
