# Bioinformatics

## The `biojava` manager

BioJava is a library oriented at `dna`, `rna`, and protein sequences
[<a href="#citeref1">1</a>,<a href="#citeref2">2</a>]. With this
manager we can create data models for sequences, such as a `dna`
sequence from `fasta` string:

```javascript
dna = biojava.DNAsFromString("> foo\nGCAT")
```

Or from just a sequence string, with or without a
name:

**Script** [code/DNAfromPlainSequence.groovy](code/DNAfromPlainSequence.code.md)
```groovy
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

BridgeDb is a platform for identifier mapping [<a href="#citeref3">3</a>]. The
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

## References

1. <a name="citeref1"></a>Holland RCG, Down TA, Pocock M, Prlić A, Huen D, James K, et al. BioJava: an open-source framework for bioinformatics. Bioinformatics. 2008 Sep 15;24(18):2096–7.  doi:[10.1093/BIOINFORMATICS/BTN397](https://doi.org/10.1093/BIOINFORMATICS/BTN397) ([Scholia](https://scholia.toolforge.org/doi/10.1093/BIOINFORMATICS/BTN397))
2. <a name="citeref2"></a>Prlić A, Yates A, Bliven SE, Rose PW, Jacobsen J, Troshin PV, et al. BioJava: an open-source framework for bioinformatics in 2012. Bioinformatics. 2012 Oct 15;28(20):2693–5.  doi:[10.1093/BIOINFORMATICS/BTS494](https://doi.org/10.1093/BIOINFORMATICS/BTS494) ([Scholia](https://scholia.toolforge.org/doi/10.1093/BIOINFORMATICS/BTS494))
3. <a name="citeref3"></a>van Iersel MP, Pico AR, Kelder T, Gao J, Ho I, Hanspers K, et al. The BridgeDb framework: standardized access to gene, protein and metabolite identifier mapping services. BMC Bioinf. 2010 Jan 4;11(1):5.  doi:[10.1186/1471-2105-11-5](https://doi.org/10.1186/1471-2105-11-5) ([Scholia](https://scholia.toolforge.org/doi/10.1186/1471-2105-11-5))


