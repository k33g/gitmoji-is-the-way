#!/bin/bash

gitmoji_code=$1     # the Gitmoji code without the surrounding :
commit_message=$2   # the git commit message you want to add <optionnal>

# Delay (in sec) before refreshing the local cache for Gitmoji Web page
gitmoji_cache_ttl=3600

gitmoji_cache_file="/tmp/gitmoji_webpage.cache"
gitmoji_url="https://gitmoji.dev"


# Check that the local cache for Gitmoji Web page if present and fresh enough
if [ -f $gitmoji_cache_file ]; then
    modsecs=$(date --utc --reference=$gitmoji_cache_file +%s)
    nowsecs=$(date +%s)
    delta=$(($nowsecs-$modsecs))
    echo "INFO: File $gitmoji_cache_file was modified $delta secs ago"

    if [ $delta -gt $gitmoji_cache_ttl ]; then
        echo "INFO: Refreshing file $gitmoji_cache_file from $gitmoji_url."
        curl $gitmoji_url --silent --output $gitmoji_cache_file
    fi
else
    echo "INFO: Refreshing file $gitmoji_cache_file from $gitmoji_url."
    curl $gitmoji_url --silent --output $gitmoji_cache_file
fi

searched_code_pattern="/.*<code>:${gitmoji_code}:</code></button><p>([^<]*)</p>.*/"

# Retrieve the comment for the given Gitmoji code
gitmoji_comment=`head -1 $gitmoji_cache_file | awk --assign pat=${searched_code_pattern} '{ match($0, pat, arr); print arr[1] }'`

if [ "g${gitmoji_comment}" == "g" ]; then
    echo "ERROR: The Gitmoji :${gitmoji_code}: was not found!"
    exit 66
fi

# Finally executing the git commit
git add . && git commit -m ":${gitmoji_code}: ${gitmoji_comment} ${commit_message}" && git push
