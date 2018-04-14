# Bioinformatics

## The `biojava` manager

BioJava is a library oriented at `dna`, `rna`, and protein
sequences. With this
manager we can create data models for sequences, such as a `dna`
sequence from `fasta` string:

```javascript
dna = biojava.DNAsFromString("> foo\nGCAT")
```

Or from just a sequence string, with or without a
name:

```javascript
dna = biojava.DNAfromPlainSequence("GCAT")
dna = biojava.DNAfromPlainSequence(
  "GCAT", "dummy sequence"
)
```

With two additional methods, we now have a pipeline to convert
`dna` into `rna`, and `rna` into a protein sequence:

```javascript
dna = biojava.DNAfromPlainSequence("GCATATGAA")
rna = biojava.transcriptionOf(dna)
prot = biojava.translationOf(rna)
```

## The `bridgedb` manager

BridgeDb is a platform for identifier mapping. The
Bioclipse manager makes its functionality available.

At the core, BridgeDb is a framework, but the project also provides actual
identifier mapping databases. And, of course, when you want to use `id`
mapping functionality, you first need to load such a database. The plugin is
written such that `id` mapping databases can be downloaded as Bioclipse
plugins, and the extension mechanism allows the manager to list which mapping
databases are available:

```javascript
dbList = bridgedb.listIDMapperProviders()
```

And then the available mapping databases can be loaded, for example, the first
in this example:

```
mbMapper = bridgedb.getIDMapper(dbList.get(0))
```

Mind you, BridgeDb has separate identifier mapping databases for genes and
proteins and for metabolites.

And once we have a mapper then we can start converting
identifiers:

```javascript
casXref = bridgedb.xref("50-00-0", "Ca")
mappings = bridgedb.map(mbMapper, casXref)
```
