# PubChemSearch.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
pubchem.search("tamoxifen")
println pubchem.search("tamoxifen")
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-pubchem', version='0.1.2')

workspaceRoot = "../ws"
pubchem = new net.bioclipse.managers.PubChemManager(workspaceRoot);

pubchem.search("tamoxifen")
println pubchem.search("tamoxifen")
```

## Output
```plain
[162642781, 162640884, 162640872, 162342122, 134...
  695255, 133611905, 133587284, 131769958, 13172...
  1936, 131698991, 131667541, 129887979, 1298661...
  33, 129866131, 129850406, 129850171, 129850165...
  , 129847543, 129800574, 129778429, 129737504, ...
  129712283, 129704431, 129695339, 129681960, 12...
  9681540, 129672182, 129661415, 129660867, 1296...
  51684, 129629052, 129627059, 124202663, 102282...
  941, 101686894, 101656459, 101007565, 92854575...
  , 91927707, 90477836, 86743256, 86591400, 7294...
  1916, 72201073, 72201071, 71752316, 71749358, ...
  71749356, 71434060, 71316239]
```
