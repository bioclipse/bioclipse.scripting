# Cheminformatics

## The `cdk` manager

Basic cheminformatics in Bioclipse is mainly handled by the Chemistry
Development Kit (CDK, [<cite>Q27061829</cite>,<cite>Q27065423</cite>,<cite>Q30149558</cite>])
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

<code>FromSMILES</code>

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

<code>PerceiveCDKAtomTypes</code>

Which lists for ethanol:

<out>PerceiveCDKAtomTypes</code>

## The `inchi` manager

The `inchi` manager makes functionality from the InChI
standard available [<cite>Q21030547</cite>,<cite>Q21092920</cite>].
The InChI library is not available as a Java library, but is included as a
binary for a selection of platforms and operating systems. This means that we
cannot assume the InChI functionality is always available in Bioclipse.
Furthermore, we need to load the library:

```js
inchi.load()
inchi.isLoaded()
```

But when that has succeeded, we can start minting InChIs:

<code>InChIGenerate</code>

Which returns:

<out>InChIGenerate</out>

The returned value is a class called InChI and we can get both the full InChI
as well as the InChIKey from it:

```js
fullInChI = anInChI.getValue()
InChIKey = anInChI.getKey()
```

## The `opsin` manager

The `opsin` manager makes functionality from the OPSIN
available [<cite>Q26481104</cite>]: convert IUPAC names to chemical
structures.

<code>ParseIUPACName</code>

## References

<references/>

