# Online Service Providers

## The `biows` manager

The `biows` manager allows you to retrieve information from biology-related
webservices, including the Uniprot
database:

```javascript
biows.queryUniProtKB("P38398")
```

The `embl` nucleotide sequence database at the `ebi`:

```js
biows.queryEMBL("M10051")
```

And also RefSeq:

```
biows.queryRefseq("NM_000059")
```

q## The `chemspider` manager

The `chemspider` manager makes functionality avaiable to interact with the
ChemSpider database. For example, we can download a structure
with a chemspider identifier number:

```js
chemspider.download(9606)
```

You can also use ChemSpider to resolve InChIKeys to entries in the
database:

<code>ChemSpiderResolve</code>

Some methods require a security token that can be set via the preferences (see
http://www.chemspider.com/AboutServices.aspx). But when that is done, we
can search specific compounds:

```
chemspider.exactSearch(
  opsin.parseIUPACName("methane")
)
```

Similarly, we can also do a similarity search:

```js
chemspider.similaritySearch(
  opsin.parseIUPACName(
    "acetyl salicylic acid"
  ), 0.95
)
```

And by substructure:

```js
chemspider.substructureSearch(
  opsin.parseIUPACName("benzene")
)
```

## The `opentox` manager

OpenTox is a platform for toxicology, allowing for sharing of
data as well as creating and running computational models [<cite>Q27162585</cite>].
The opentox manager integrates much of its functionality [<cite>Q27134787</cite>].

There are various methods to list what is available. Some information is
available from a central registration server, e.g.
http://apps.ideaconsult.net:8080/ontology/:

```js
registry = "http://apps.ideaconsult.net:8080/ontology";
algorithms = opentox.listAlgorithms(registry);
descriptors = opentox.listDescriptors(registry);
models = opentox.listModels(registry);
```

Similarly, using a particular OpenTox service, e.g. an
`ambit` instance at
http://apps.ideaconsult.net:8080/ambit2/, we
can list data sets and features
(properties) [<cite>Q27921856</cite>]:

```js
service = "http://apps.ideaconsult.net:8080/ambit2/";
dataSets = opentox.listDataSets(service);
features = opentox.listFeatures(service);
```

Instead of listing, we can also search for various types, such as the ToxTree
models [<cite>Q52227990</cite>]:

```js
models = opentox.searchModels(registry, "ToxTree");
```

We can select one of the available models, and then make a prediction for a
compound:

```js
toxTreeModel =
  "http://apps.ideaconsult.net:8080/ambit2/model/3";
opentox.predictWithModel(
  service, toxTreeModel,
  cdk.fromSMILES("CCC")
)
```

## The `pubchem` manager

The pubchem manager makes functionality available to interact with the PubChem
database. For example, we can download a structure with a
PubChem compound identifier number:

```js
pubchem.download(2244)
```

Or as a 3d structure:

```js
pubchem.download3d(2244)
```

And we can search compounds based on a label:

```js
pubchem.search("tamoxifen")
```

## References

<references/>

