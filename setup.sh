for d in */ ; do
    echo $d
    mv "$d"wallpapers/* "$d"
    rm -rfv "$d"wallpapers
    rm -rfv "$d"thumbs
done
