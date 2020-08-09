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
@Grab(group='io.github.egonw.bacting', module='managers-pubchem', version='0.0.13')

workspaceRoot = "../ws"
pubchem = new net.bioclipse.managers.PubChemManager(workspaceRoot);

pubchem.search("tamoxifen")
println pubchem.search("tamoxifen")
```
## Output
```plain
[139595647, 134695255, 133611905, 131769958, 131...
  721936, 131698991, 131668254, 131667541, 12988...
  7979, 129866133, 129866131, 129850406, 1298501...
  71, 129850165, 129847543, 129800574, 129778429...
  , 129737504, 129712283, 129704431, 129695339, ...
  129681960, 129681540, 129672182, 129661415, 12...
  9660867, 129651684, 129629052, 129627059, 1242...
  02663, 102282941, 101686894, 101007565, 928545...
  75, 92015513, 90477836, 86743256, 86591400, 72...
  941916, 72201073, 72201071, 71752316, 71749358...
  , 71749356, 71434060, 71433619, 71316239, 7131...
  6238, 71316031, 71315792]
```
