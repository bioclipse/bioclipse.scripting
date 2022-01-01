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
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-rdf', version='0.0.29')

workspaceRoot = "../ws"
rdf = new net.bioclipse.managers.RDFManager(workspaceRoot);

base = rdf.createStore("/tmp/chebiowl")
```
## Output
```plain
```
