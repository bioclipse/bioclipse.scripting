# Cheminformatics

## The `cdk` manager

Basic cheminformatics in Bioclipse is mainly handled by the Chemistry
Development Kit (CDK, [<a href="#citeref1">1</a>,<a href="#citeref2">2</a>,<a href="#citeref3">3</a>])
and for this there is the `cdk` manager.

The cdk manager is one with many features. One is to validate
CAS registry numbers, identifiers used by the Chemical Abstract
Services:

```js
cdk.isValidCAS("50-00-0")
```

But let's go to the more interesting functionality around chemical graphs. For
example, let's see how we can create molecular structures from a SMILES
string:

**Script** [code/FromSMILES.groovy](code/FromSMILES.code.md)
```groovy
mol = cdk.fromSMILES("COC")
```

Normally, structure diagrams are generated without explicit hydrogens. But we
can easily add them:

```js
cdk.addExplicitHydrogens(mol)
```

We can then calculate a number of properties, including the molecular
mass\index{molecular mass}, total formal charge, and molecular
formula:

```js
cdk.calculateMass(mol)
cdk.totalFormalCharge(mol)
cdk.molecularFormula(mol)
```

Additionally, we can also inspect some of in the information present in the
model:

```js
cdk.has2d(mol)
cdk.has3d(mol)
cdk.isConnected(mol)
```

The cdk manager is also central to file support. Before we load it, we may want
to just check the file format:

```js
cdk.determineFormat(
  "/ACS Drug Disclosures/AZD5423.cml"
)
```

However, this information is not needed when loading files:

```js
mol = cdk.loadMolecule(
  "/ACS Drug Disclosures/AZD5423.cml"
)
```

Saving is quite similar, and there are two methods for the two main formats:

```js
cdk.saveCML(mol, "/Test/mol.cml")
cdk.saveMDLMolfile(mol, "/Test/mol.mol")
```

## The `cdx` manager

The `cdx` manager is also based on the CDK and exposes
functionality more oriented at CDK developers. For example, we can
create a String representation of the full data model for debugging
purposes:

```js
cdx.debug(mol)
```

Or we can see the details of the differences between two data
models:

```js
cdx.diff(
  cdk.fromSMILES("CC"),
  cdk.fromSMILES("CCC")
)
```

And we can list the exact atom types for the atoms in a
molecule:

**Script** [code/PerceiveCDKAtomTypes.groovy](code/PerceiveCDKAtomTypes.code.md)
```groovy
cdx.perceiveCDKAtomTypes(mol)
```

Which lists for ethanol:

```plain
1:C.sp3
2:C.sp3
3:O.sp3
```

## The `inchi` manager

The `inchi` manager makes functionality from the InChI
standard available [<a href="#citeref4">4</a>,<a href="#citeref5">5</a>].
The InChI library is not available as a Java library, but is included as a
binary for a selection of platforms and operating systems. This means that we
cannot assume the InChI functionality is always available in Bioclipse.
Furthermore, we need to load the library:

**Script** [code/LoadInChI.groovy](code/LoadInChI.code.md)
```groovy
inchi.load()
inchi.isLoaded()
```

But when that has succeeded, we can start minting InChIs:

**Script** [code/InChIGenerate.groovy](code/InChIGenerate.code.md)
```groovy
anInChI = inchi.generate(
  opsin.parseIUPACName("methane")
)
```

Which returns:

```plain
InChI=1S/CH4/h1H4
```

The returned value is a class called InChI and we can get both the full InChI
as well as the InChIKey from it:

**Script** [code/InChIKeyGenerate.groovy](code/InChIKeyGenerate.code.md)
```groovy
fullInChI = anInChI.getValue()
InChIKey = anInChI.getKey()
```

## The `opsin` manager

The `opsin` manager makes functionality from the OPSIN
available [<a href="#citeref6">6</a>]: convert IUPAC names to chemical
structures.

**Script** [code/ParseIUPACName.groovy](code/ParseIUPACName.code.md)
```groovy
mol = opsin.parseIUPACName(
  "Ethyl [(1R,3aR,4aR,6R,8aR,9S,9aS)-9-" +
  "{(E)-2-[5-(3-fluorophenyl)-2-pyridinyl]vinyl}-" +
  "1-methyl-3-oxododecahydronaphtho[2,3-c]furan-" +
  "6-yl]carbamate"
)
```

## References

1. <a name="citeref1"></a>Steinbeck C, Han Y, Kuhn S, Horlacher O, Luttmann E, Luttmann E, et al. The Chemistry Development Kit (CDK): an open-source Java library for Chemo- and Bioinformatics. JCIM. 2003 Feb 11;43(2):493–500.  doi:[10.1021/CI025584Y](https://doi.org/10.1021/CI025584Y) ([Scholia](https://scholia.toolforge.org/doi/10.1021/CI025584Y))
2. <a name="citeref2"></a>Steinbeck C, Hoppe C, Hoppe C, Kuhn S, Floris M, Guha R, et al. Recent Developments of the Chemistry Development Kit (CDK) - An Open-Source Java Library for Chemo- and Bioinformatics. Curr Pharm Des [Internet]. 2006 Jun 1;12(17):2111–20. Available from: https://cdk.github.io/cdk-paper-2/ doi:[10.2174/138161206777585274](https://doi.org/10.2174/138161206777585274) ([Scholia](https://scholia.toolforge.org/doi/10.2174/138161206777585274))
3. <a name="citeref3"></a>Willighagen E, Mayfield JW, Alvarsson J, Berg A, Carlsson L, Jeliazkova N, et al. The Chemistry Development Kit (CDK) v2.0: atom typing, depiction, molecular formulas, and substructure searching. J Cheminform. 2017 Jun 6;9(1).  doi:[10.1186/S13321-017-0220-4](https://doi.org/10.1186/S13321-017-0220-4) ([Scholia](https://scholia.toolforge.org/doi/10.1186/S13321-017-0220-4))
4. <a name="citeref4"></a>Heller SR, McNaught A, Stein S, Tchekhovskoi D, Pletnev I. InChI - the worldwide chemical structure identifier standard. J Cheminform. 2013;5(1):7.  doi:[10.1186/1758-2946-5-7](https://doi.org/10.1186/1758-2946-5-7) ([Scholia](https://scholia.toolforge.org/doi/10.1186/1758-2946-5-7))
5. <a name="citeref5"></a>Spjuth O, Berg A, Adams SE, Willighagen E. Applications of the InChI in cheminformatics with the CDK and Bioclipse. J Cheminform. 2013;5(1):14.  doi:[10.1186/1758-2946-5-14](https://doi.org/10.1186/1758-2946-5-14) ([Scholia](https://scholia.toolforge.org/doi/10.1186/1758-2946-5-14))
6. <a name="citeref6"></a>Lowe DM, Lowe DM, Corbett PT, Murray-Rust P, Glen RC. Chemical Name to Structure: OPSIN, an Open Source Solution. JCIM. 2011 Mar 28;51(3):739–53.  doi:[10.1021/CI100384D](https://doi.org/10.1021/CI100384D) ([Scholia](https://scholia.toolforge.org/doi/10.1021/CI100384D))


