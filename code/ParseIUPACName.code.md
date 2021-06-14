# ParseIUPACName.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
mol = opsin.parseIUPACName(
  "Ethyl [(1R,3aR,4aR,6R,8aR,9S,9aS)-9-" +
  "{(E)-2-[5-(3-fluorophenyl)-2-pyridinyl]vinyl}-" +
  "1-methyl-3-oxododecahydronaphtho[2,3-c]furan-" +
  "6-yl]carbamate"
)
println mol
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-opsin', version='0.0.18')

workspaceRoot = "../ws"
opsin = new net.bioclipse.managers.OpsinManager(workspaceRoot);

mol = opsin.parseIUPACName(
  "Ethyl [(1R,3aR,4aR,6R,8aR,9S,9aS)-9-" +
  "{(E)-2-[5-(3-fluorophenyl)-2-pyridinyl]vinyl}-" +
  "1-methyl-3-oxododecahydronaphtho[2,3-c]furan-" +
  "6-yl]carbamate"
)
println mol
```
## Output
```plain
CDKMolecule:C29H33FN2O4
```
