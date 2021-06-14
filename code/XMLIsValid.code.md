# XMLIsValid.groovy
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
valid = xml.isValid("/Google/solubility.rdf")
println "Valid? " + valid
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-xml', version='0.0.18')
@Grab(group='io.github.egonw.bacting', module='managers-ui', version='0.0.18')

workspaceRoot = "../ws"

bioclipse = new net.bioclipse.managers.BioclipseManager(workspaceRoot);
ui = new net.bioclipse.managers.UIManager(workspaceRoot);
xml = new net.bioclipse.managers.XMLManager(workspaceRoot);

ui.newProject("/Google/");
bioclipse.downloadAsFile(
  "https://raw.githubusercontent.com/egonw/bioclipse.ons/master/solubility.rdf",
  "/Google/solubility.rdf"
);
valid = xml.isValid("/Google/solubility.rdf")
println "Valid? " + valid
```
## Output
```plain
Valid? false
```
