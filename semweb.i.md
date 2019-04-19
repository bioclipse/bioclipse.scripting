# Semantic Web

Semantic Web technologies are the new glue to link different data sources. Bioclipse
provides support for several of the technologies, including general
Resource Description Format (RDF) support,
the SPARQL query language, and the Web Ontology Langauge
(OWL). This chapter outlines how these
technologies can be used in Bioclipse.

## The `rdf` manager

The `rdf` manager can be used to handle Resource Description Framework
(RDF) data (see doi:[10.1186/1758-2946-3-19](https://doi.org/10.1186/1758-2946-3-19)). The basic unit of
information in RDF is a triple and these triples are stored in a
*triple store*. A file based store can be created with this
code:

```js
base = rdf.createStore("/tmp/chebiowl")
```

Here, the path is a full operating system-style path, and this one works only
on Unix/Linux/BSD systems.

As soon as you have a store, you can start adding triples to it. For example,
when they come from a file, you may want to do something like
this:

```js
knowledgebase = "/WikiPathways/chebi.owl";
kbFormat = "RDF/XML";
base = rdf.createStore("/tmp/chebiowl")
rdf.importFile(base, knowledgebase, kbFormat);
```

If the amount of data is limited, you can also create an
in-memory model:

```js
knowledgebase = rdf.createInMemoryStore();
```

This can be used to create triples from data you are
processing:

```js
rdf.addObjectProperty(knowledgebase,
  "http://linkedchemistry.info/chembl/molecule/m443",
  "http://www.w3.org/2000/01/rdf-schema#subClassOf",
  "http://semanticscience.org/resource/CHEMINF_000000"
)
rdf.addDataProperty(knowledgebase,
  "http://linkedchemistry.info/chembl/molecule/m443",
  "http://www.w3.org/2000/01/rdf-schema#label",
  "CHEMBL268854"
)
```

You can get the number of triples held in the store with the size
method:

```js
rdf.size(knowledgebase);
```

And the collected set of triples can be serialized as Turtle, which
is one of the easier to read serialization formats of RDF triples.
For this, you can use:

```js
rdf.asTurtle(knowledgebase);
```

## The `owlapi` manager

The `owlapi` manager exposes functionality of the OWLAPI library, to deal with Web Ontology
Languages (OWL) ontologies (doi:[10.3233/SW-2011-0025](https://doi.org/10.3233/SW-2011-0025)).
The manager is oriented at ontologies in the Bioclipse workspace.
Thus, loading an ontology works like:

```js
ontology = owlapi.load(
  "/eNanoMapper/enanomapper.owl", null
);
```

The second parameter is a mapper, which can be used to indicate where imported
ontologies can be locally found. For example:

```js
mapper = null; // initially no mapper
mapper = owlapi.addMapping(mapper,
  "http://purl.bioontology.org/ontology/npo",
  "/eNanoMapper/npo-asserted.owl"
);
mapper = owlapi.addMapping(mapper,
  "http://www.enanomapper.net/ontologies/" + 
  "external/ontology-metadata-slim.owl",
  "/eNanoMapper/ontology-metadata-slim.owl"
)
ontology = owlapi.load(
  "/eNanoMapper/enanomapper.owl", mapper
);
```

You can always see what IRIs are mapped with:

```js
owlapi.listMappings(mapper)
```

Once you have loaded an ontology, you can list all the imported
ontologies:

```js
imported = owlapi.getImportedOntologies(ontology)
for (var i = 0; i < imported.size(); i++) {
  js.say(
    imported.get(i).getOntologyID().getOntologyIRI()
  )
}
```

Similarly, you can list all the classes defined by the ontology or imported
ontologies:

```js
imported = owlapi.getImportedOntologies(ontology)
for (var i = 0; i < imported.size(); i++) {
  js.say(
    owlapi.showClasses(imported.get(i))
  )
}
```

Finally, the `owlapi` manager also provide functionality to check for profile
violations:

```js
owlapi.checkVioloations(ontology)
```

## The `ldf` manager

Linked Data Fragments (LDF) are a novel technology allowing
distributed querying. The LDF software used in Bioclipse provides the functionality
by exposing a *fragment* as a RDF store. That is very fortunate, because it
means we can automatically integrate it with the existing RDF functionality, for example
provided by the `rdf` manager. For example, we can query for and validate CAS
registry numbers in WikiData (as Groovy script):

```groovy
wikidataldf = ldf.createStore(
  "http://data.wikidataldf.com/wikidata"
)

identifier = "P231"

sparql = """
PREFIX wd: <http://www.wikidata.org/entity/>

SELECT ?compound ?id WHERE {
  ?compound wd:${identifier}s [ wd:${identifier}v ?id ] .
}
"""
mappings = rdf.sparql(wikidataldf, sparql)

// safe to a file
for (i=1; i<=mappings.rowCount; i++) {
  casNo = mappings.get(i, "id")
  compound = mappings.get(i, "compound")
  if (!cdk.isValidCAS(casNo)) {
    js.say(
      "Compound " + compound + " has an " +
      " invalid CAS registry number: " +
      casNo
    );
  }
}
```

