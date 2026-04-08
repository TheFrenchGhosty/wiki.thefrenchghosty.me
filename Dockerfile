FROM zensical/zensical:latest as build
WORKDIR /build
COPY . .
RUN zensical build --clean

FROM docker.io/library/nginx:alpine
COPY --from=build /build/site/ /usr/share/nginx/html/
