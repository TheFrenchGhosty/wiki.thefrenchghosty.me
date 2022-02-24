# PussTheCat.org-Wiki

https://squidfunk.github.io/mkdocs-material/creating-your-site/

## Create the structure

```
sudo docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material new .
```

## Previewing when writing

```
sudo docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

## Building

```
sudo docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
```