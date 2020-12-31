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

## The `chemspider` manager

The `chemspider` manager makes functionality avaiable to interact with the
ChemSpider database. For example, we can download a structure
with a chemspider identifier number:

**Script** [code/ChemSpiderDownload.groovy](code/ChemSpiderDownload.code.md)
```groovy
chemspider.download(9606)
```

You can also use ChemSpider to resolve InChIKeys to entries in the
database:

**Script** [code/ChemSpiderResolve.groovy](code/ChemSpiderResolve.code.md)
```groovy
chemspider.resolve("RCINICONZNJXQF-MZXODVADSA-N")
```

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
data as well as creating and running computational models [<a href="#citeref1">1</a>].
The opentox manager integrates much of its functionality [<a href="#citeref2">2</a>].

There are various methods to list what is available. Some information is
available from a central registration server, e.g.
[http://apps.ideaconsult.net/ontology/](http://apps.ideaconsult.net/ontology/):

```js
registry = "https://apps.ideaconsult.net/ontology";
algorithms = opentox.listAlgorithms(registry);
descriptors = opentox.listDescriptors(registry);
models = opentox.listModels(registry);
```

Similarly, using a particular OpenTox service, e.g. an
`ambit` instance at
[http://apps.ideaconsult.net/ambit2/](http://apps.ideaconsult.net/ambit2/),
we can list data sets and features
(properties) [<a href="#citeref3">3</a>]:

```js
service = "http://apps.ideaconsult.net/ambit2/";
dataSets = opentox.listDataSets(service);
features = opentox.listFeatures(service);
```

Instead of listing, we can also search for various types, such as the ToxTree
models [<a href="#citeref4">4</a>]:

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

**Script** [code/PubChemSearch.groovy](code/PubChemSearch.code.md)
```groovy
pubchem.search("tamoxifen")
```

## References

1. <a name="citeref1"></a>Hardy B, Douglas N, Helma C, Rautenberg M, Jeliazkova N, Jeliazkov V, et al. Collaborative development of predictive toxicology applications. J Cheminform. 2010 Aug 31;2(1):7.  doi:[10.1186/1758-2946-2-7](https://doi.org/10.1186/1758-2946-2-7) ([Scholia](https://scholia.toolforge.org/doi/10.1186/1758-2946-2-7))
2. <a name="citeref2"></a>Willighagen E, Jeliazkova N, Hardy B, Grafström R, Spjuth O. Computational toxicology using the OpenTox application programming interface and Bioclipse. BMC Research Notes. 2011;4(1):487.  doi:[10.1186/1756-0500-4-487](https://doi.org/10.1186/1756-0500-4-487) ([Scholia](https://scholia.toolforge.org/doi/10.1186/1756-0500-4-487))
3. <a name="citeref3"></a>Jeliazkova N, Jeliazkov V. AMBIT RESTful web services: an implementation of the OpenTox application programming interface. J Cheminform. 2011 May 16;3(1):18.  doi:[10.1186/1758-2946-3-18](https://doi.org/10.1186/1758-2946-3-18) ([Scholia](https://scholia.toolforge.org/doi/10.1186/1758-2946-3-18))
4. <a name="citeref4"></a>Patlewicz G, Jeliazkova N, Safford RJ, Worth A, Aleksiev B. An evaluation of the implementation of the Cramer classification scheme in the Toxtree software. SAR and QSAR in Environmental Research. 2008 Jan 1;19(5–6):495–524.  doi:[10.1080/10629360802083871](https://doi.org/10.1080/10629360802083871) ([Scholia](https://scholia.toolforge.org/doi/10.1080/10629360802083871))


