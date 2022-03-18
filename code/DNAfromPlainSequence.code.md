# DNAfromPlainSequence.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
dna = biojava.DNAfromPlainSequence("GCAT")
println dna
dna = biojava.DNAfromPlainSequence(
  "GCAT", "dummy sequence"
)
println dna
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-biojava', version='0.0.29')

workspaceRoot = "../ws"
biojava = new net.bioclipse.managers.BiojavaManager(workspaceRoot);

dna = biojava.DNAfromPlainSequence("GCAT")
println dna
dna = biojava.DNAfromPlainSequence(
  "GCAT", "dummy sequence"
)
println dna
```
## Output
```plain
DNA seq1647588990991: 'gcat'
DNA dummy sequence: 'gcat'
```
