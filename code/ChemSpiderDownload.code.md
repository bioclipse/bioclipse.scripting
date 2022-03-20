# ChemSpiderDownload.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
chemspider.download(9606)
println chemspider.download(9606)
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-chemspider', version='0.0.29')

workspaceRoot = "../ws"
chemspider = new net.bioclipse.managers.ChemspiderManager(workspaceRoot);

chemspider.download(9606)
println chemspider.download(9606)
```

## Output
```plain
CDKMolecule:C3H4ClF3
```
