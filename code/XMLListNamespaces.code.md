# XMLListNamespaces.groovy
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
wellformed = xml.listNamespaces("/Google/solubility.rdf")
println "Namespaces: " + wellformed
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
wellformed = xml.listNamespaces("/Google/solubility.rdf")
println "Namespaces: " + wellformed
```

## Output
```plain
Namespaces: [http://www.w3.org/1999/02/22-rdf-sy...
  ntax-ns#, http://purl.org/dc/elements/1.1/, ht...
  tp://www.w3.org/2000/01/rdf-schema#, http://us...
  efulinc.com/ns/doap#, http://xmlns.com/foaf/0....
  1/, http://ontology.example.org/chemistry]
```
