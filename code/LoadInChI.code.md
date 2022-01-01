# LoadInChI.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
inchi.load()
inchi.isLoaded()
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-opsin', version='0.0.29')
@Grab(group='io.github.egonw.bacting', module='managers-inchi', version='0.0.29')

workspaceRoot = "../ws"
opsin = new net.bioclipse.managers.OpsinManager(workspaceRoot);
inchi = new net.bioclipse.managers.InChIManager(workspaceRoot);

inchi.load()
inchi.isLoaded()
```
## Output
```plain
```
