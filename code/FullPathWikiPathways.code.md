# FullPathWikiPathways.groovy
**Source code:**
```groovy
@Grab(group='net.bioclipse.managers', module='bioclipse-ui', version='0.0.3-SNAPSHOT')

workspaceRoot = "ws"
bioclipse = new net.bioclipse.managers.BioclipseManager(workspaceRoot);

species = "human"
dataMap = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
);
gpmlFiles = new File(dataMap).listFiles()
println gpmlFiles
```
**Output:**
```plain
[ws/WikiPathways/data/human/WP3577_94507.gpml]
```
