# PerceiveCDKAtomTypes.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
mol = cdk.fromSMILES("CCO")
cdx.perceiveCDKAtomTypes(mol)
print cdx.perceiveCDKAtomTypes(mol)
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-cdk', version='0.1.2')
@Grab(group='io.github.egonw.bacting', module='managers-cdkdebug', version='0.1.2')

workspaceRoot = "../ws"
cdk = new net.bioclipse.managers.CDKManager(workspaceRoot);
cdx = new net.bioclipse.managers.cdkdebug.CDKDebugManager(workspaceRoot);

mol = cdk.fromSMILES("CCO")
cdx.perceiveCDKAtomTypes(mol)
print cdx.perceiveCDKAtomTypes(mol)
```

## Output
```plain
1:C.sp3
2:C.sp3
3:O.sp3
```
