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
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-pubchem', version='0.0.15')

workspaceRoot = "../ws"
pubchem = new net.bioclipse.managers.PubChemManager(workspaceRoot);

pubchem.search("tamoxifen")
println pubchem.search("tamoxifen")
```
## Output
```plain
[154699530, 139595647, 134695255, 133611905, 131...
  769958, 131721936, 131698991, 131668254, 13166...
  7541, 129887979, 129866133, 129866131, 1298504...
  06, 129850171, 129850165, 129847543, 129800574...
  , 129778429, 129737504, 129712283, 129704431, ...
  129695339, 129681960, 129681540, 129672182, 12...
  9661415, 129660867, 129651684, 129629052, 1296...
  27059, 124202663, 102282941, 101686894, 101007...
  565, 92854575, 92015513, 90477836, 86743256, 8...
  6591400, 72941916, 72201074, 72201073, 7220107...
  1, 71752316, 71749358, 71749356, 71434060, 714...
  33619, 71316239, 71316238]
```
