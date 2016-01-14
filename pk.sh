if [[ $# = 0 ]]; then
    liste="$GITHUB_NAME"
else
    liste="$@"
fi

for name in "$liste"
do
    curl https://github.com/$name.keys
done
