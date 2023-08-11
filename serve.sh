echo "Starting jekyll/jekyll docker container"
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle:Z" \
  -p 4000:4000 \
  jekyll/jekyll:3.8.6 \
  jekyll serve -w
