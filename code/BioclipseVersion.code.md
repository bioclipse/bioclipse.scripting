# BioclipseVersion.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
println "Bioclipse " + bioclipse.version()
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-ui', version='0.1.2')

workspaceRoot = "../ws"
bioclipse = new net.bioclipse.managers.BioclipseManager(workspaceRoot);

println "Bioclipse " + bioclipse.version()
```

## Output
```plain
Bioclipse 2.8.0
```
