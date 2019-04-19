# FullPathWikiPathways.groovy
## Source code
### Bioclipse 2.6
```groovy
species = "human"
dataMap = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
);
gpmlFiles = new File(dataMap).listFiles()
println gpmlFiles
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
The Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
<br />
```groovy
@Grab(group='net.bioclipse.managers', module='bioclipse-ui', version='0.0.3-SNAPSHOT')

workspaceRoot = "../ws"
bioclipse = new net.bioclipse.managers.BioclipseManager(workspaceRoot);

species = "human"
dataMap = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
);
gpmlFiles = new File(dataMap).listFiles()
println gpmlFiles
```
## Output
```plain
[../ws/WikiPathways/data/human/WP3577_94507.gpml]
```
