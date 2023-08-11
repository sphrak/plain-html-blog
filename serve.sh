echo "Starting jekyll/jekyll docker container"
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish [::1]:4000:4000 \
  jekyll/jekyll \
  jekyll serve
