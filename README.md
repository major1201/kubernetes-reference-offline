# kubernetes-reference-offline

Make Kubernetes API reference HTML available offline

## Motivation

1. Only latest versions of Kubernetes API references be stored in <https://github.com/kubernetes/website>, while I need to checkout multiple versions of API references in parallel which makes me confused
2. `js`, `css` path in API refenrence in `index.html` is absolute path, this makes it hard to copy to the outside to serve. The official way to serve it is through containers(`make container-serve`), this makes it a bit more complicated

## Modifications

1. Commented Google fonts in `css/style_apiref.css`
2. In each versions of API reference
   1. make `css/`, `js/`, `fonts/` using relative path
   2. remove `favicon.ico`

## When this repo updates

I will update it several days after <https://github.com/kubernetes/website> releases.
