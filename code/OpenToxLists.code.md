# OpenToxLists.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
registry = "https://apps.ideaconsult.net/ontology";
algorithms = opentox.listAlgorithms(registry);
descriptors = opentox.listDescriptors(registry);
models = opentox.listModels(registry);
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-opentox', version='0.0.8-SNAPSHOT')

workspaceRoot = "../ws"
opentox = new net.bioclipse.managers.OpentoxManager(workspaceRoot);

registry = "https://apps.ideaconsult.net/ontology";
algorithms = opentox.listAlgorithms(registry);
descriptors = opentox.listDescriptors(registry);
models = opentox.listModels(registry);
```
## Output
```plain
```
