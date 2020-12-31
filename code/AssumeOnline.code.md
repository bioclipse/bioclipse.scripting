# AssumeOnline.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
bioclipse.assumeOnline()
println "Online? " + bioclipse.assumeOnline()
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-ui', version='0.0.15')

workspaceRoot = "../ws"
bioclipse = new net.bioclipse.managers.BioclipseManager(workspaceRoot);

bioclipse.assumeOnline()
println "Online? " + bioclipse.assumeOnline()
```
## Output
```plain
Online? null
```
