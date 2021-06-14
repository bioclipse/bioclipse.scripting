# ChemSpiderResolve.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
chemspider.resolve("RCINICONZNJXQF-MZXODVADSA-N")
println chemspider.resolve("RCINICONZNJXQF-MZXODVADSA-N")
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-chemspider', version='0.0.18')

workspaceRoot = "../ws"
chemspider = new net.bioclipse.managers.ChemspiderManager(workspaceRoot);

chemspider.resolve("RCINICONZNJXQF-MZXODVADSA-N")
println chemspider.resolve("RCINICONZNJXQF-MZXODVADSA-N")
```
## Output
```plain
[10368587]
```
