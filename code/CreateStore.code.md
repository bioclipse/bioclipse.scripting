# CreateStore.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
base = rdf.createStore("/tmp/chebiowl")
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-rdf', version='0.1.2')

workspaceRoot = "../ws"
rdf = new net.bioclipse.managers.RDFManager(workspaceRoot);

base = rdf.createStore("/tmp/chebiowl")
```

## Output
```plain
```
