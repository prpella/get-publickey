if [[ $# = 0 ]]; then
    liste="prpella"
else
    liste="$@"
fi

for name in "$liste"
do
    curl https://github.com/$name.keys
done
