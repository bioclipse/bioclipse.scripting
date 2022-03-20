# FromSMILES.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
mol = cdk.fromSMILES("COC")
println mol
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-cdk', version='0.0.29')

workspaceRoot = "../ws"
cdk = new net.bioclipse.managers.CDKManager(workspaceRoot);

mol = cdk.fromSMILES("COC")
println mol
```

## Output
```plain
CDKMolecule:C2H6O
```
