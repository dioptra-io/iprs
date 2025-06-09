## Set up GitHub actions

## Building a Docker image and running the container locally

From the root directory of the project:

### Build the Docker image

`docker build --platform=linux/x86_64 -t iprs-website .`

* `--platform=linux/x86_64` builds a Linux container that will run on the 64-bit x86 processors found on most servers; this ensures compatibility with most server environments and avoids architecture mismatch errors, particularly when building on other architectures like Apple Silicon, where `docker build` defaults to the local ARM64 architecture instead.
* `-t iprs-website` provides the tag `iprs-website` to identify the image, allowing you to reference it easily in subsequent Docker commands, such as `docker run`.

### Run the container

```bash
docker run --rm \
  --platform=linux/x86_64 \
  -v "$PWD":/srv/jekyll \
  -p 4000:4000 \
  iprs-website \
  jekyll serve --watch --host 0.0.0.0 --config _config.yml,_config_local.yml
```

* `--rm` means that the container will be automatically removed after it stops.
* `-v "$PWD":/srv/jekyll` ensures the files in your current local project directory (`$PWD`) are mounted into the container (`/srv/jekyll`), so any changes you make are immediately reflected.
* `-p 4000:4000` maps port 4000 inside the container (where Jekyll serves the site) to port 4000 on your host machine.
* `iprs-website` refers to the Docker image built earlier, which contains the environment for running your Jekyll site
* `jekyll serve --watch --host 0.0.0.0`:
  - serves the site locally by default at [http://localhost:4000](http://localhost:4000)
  - watches for changes in your source files
  - automatically rebuilds the site when you save changes
  - `--host 0.0.0.0` is necessary to make the server accessible from outside the container, notably from your host machine.
  - `--config _config.yml,_config_local.yml` applies the global configuration file and then any local configuration overrides

### View the website locally

 navigate to [http://localhost:4000](http://localhost:4000)

# Minimal Mistakes remote theme starter

Click [**Use this template**](https://github.com/mmistakes/mm-github-pages-starter/generate) button above for the quickest method of getting started with the [Minimal Mistakes Jekyll theme](https://github.com/mmistakes/minimal-mistakes).

Contains basic configuration to get you a site with:

- Sample posts.
- Sample top navigation.
- Sample author sidebar with social links.
- Sample footer links.
- Paginated home page.
- Archive pages for posts grouped by year, category, and tag.
- Sample about page.
- Sample 404 page.
- Site wide search.

Replace sample content with your own and [configure as necessary](https://mmistakes.github.io/minimal-mistakes/docs/configuration/).

---

## Troubleshooting

If you have a question about using Jekyll, start a discussion on the [Jekyll Forum](https://talk.jekyllrb.com/) or [StackOverflow](https://stackoverflow.com/questions/tagged/jekyll). Other resources:

- [Ruby 101](https://jekyllrb.com/docs/ruby-101/)
- [Setting up a Jekyll site with GitHub Pages](https://jekyllrb.com/docs/github-pages/)
- [Configuring GitHub Metadata](https://github.com/jekyll/github-metadata/blob/master/docs/configuration.md#configuration) to work properly when developing locally and avoid `No GitHub API authentication could be found. Some fields may be missing or have incorrect data.` warnings.
