# raycast script collection

This repository is a collection of custom raycast scripts.
Find raycast at: https://www.raycast.com/

## installation

1. Clone this repository
2. Open the Extensions tab in the Raycast preferences
3. Click the plus button
4. Click Add Script Directory
5. Select directories containing your Script Commands

## prefix.cc-search.sh

* search raycast for `prefix.cc search` (I suggest you alias it to _cc_) or `cc`
* `<tab>` enter a prefix, e.g `rdfs`
* (optionally) `<tab>` define the return type / action, default is the SPARQL prefix string, available options:
  * `sparql` (default) - returns the SPARQL prefix, e.g. `PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>`
    * => `⇧⌘C` takes it to your clipboard
  * `ns` - returns the namespace IRI, e.g. `http://www.w3.org/1999/02/22-rdf-syntax-ns#`
    * => `⇧⌘C` takes it to your clipboard
  * `ttl` - returns the turtle prefix, e.g. `@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .`
    * => `⇧⌘C` takes it to your clipboard
  * `open` - opens the namespace IRI in your browser, e.g. <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
  * `vowl` - opens the namespace IRI in the [tib vowl service](https://service.tib.eu/webvowl/), e.g. <https://service.tib.eu/webvowl/#iri=http%3A%2F%2Fwww.w3.org%2F1999%2F02%2F22-rdf-syntax-ns%23>