This is the repository for the [IP Route Survey (IPRS)](https://iprs.dioptra.io/) website.

As it is a GitHub Pages website, the source code is to be found in this branch, the `gh-pages` branch. Pull requests welcome!

For development purposes, on your own machine you can build an image and run the container using Docker:

```bash
# Build the image
docker build -t iprs-website .

# Run the container
docker run -p 4000:4000 -p 35729:35729 -v $(pwd):/app iprs-website
```

Then you can view your version of the website at [http://localhost:4000/](http://localhost:4000/).
