# PussTheCat.org-Wiki

https://squidfunk.github.io/mkdocs-material/creating-your-site/

## Add your user to the docker group

```
sudo usermod -aG docker [USERNAME]
```

## Create the structure

```
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material new .
```

## Previewing when writting

```
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

## Building

```
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
```