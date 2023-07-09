# kiwix

Caching the world's knowledge, in a docker container

### Installation

1. Build the `Dockerfile` as `outerlan/kiwix`
2. Drag and drop the zim files into a folder called `library` in this folder
3. `docker-compose up -d`, and you're done!

### Adding more zim files

1. Drag and drop the zim files into the same `library` folder
2. `docker-compose restart` to rebuild the library.xml file
3. You're done!