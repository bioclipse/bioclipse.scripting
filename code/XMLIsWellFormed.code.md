# XMLIsWellFormed.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
ui.newProject("/Google/");
bioclipse.downloadAsFile(
  "https://raw.githubusercontent.com/egonw/bioclipse.ons/master/solubility.rdf",
  "/Google/solubility.rdf"
);
wellformed = xml.isWellFormed("/Google/solubility.rdf")
println "Well-formed? " + wellformed
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-xml', version='0.0.29')
@Grab(group='io.github.egonw.bacting', module='managers-ui', version='0.0.29')

workspaceRoot = "../ws"

bioclipse = new net.bioclipse.managers.BioclipseManager(workspaceRoot);
ui = new net.bioclipse.managers.UIManager(workspaceRoot);
xml = new net.bioclipse.managers.XMLManager(workspaceRoot);

ui.newProject("/Google/");
bioclipse.downloadAsFile(
  "https://raw.githubusercontent.com/egonw/bioclipse.ons/master/solubility.rdf",
  "/Google/solubility.rdf"
);
wellformed = xml.isWellFormed("/Google/solubility.rdf")
println "Well-formed? " + wellformed
```

## Output
```plain
Well-formed? true
```
