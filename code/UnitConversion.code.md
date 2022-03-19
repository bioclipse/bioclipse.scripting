# UnitConversion.groovy
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```groovy
quantity = qudt.newQuantity(1.0, "m")
println quantity
converted = qudt.convertTo(quantity, "cm");
println converted
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting).
<br />
```groovy
@Grab(group='io.github.egonw.bacting', module='managers-ui', version='0.0.30')

workspaceRoot = "../ws"
qudt = new net.bioclipse.managers.QUDTManager(workspaceRoot);

quantity = qudt.newQuantity(1.0, "m")
println quantity
converted = qudt.convertTo(quantity, "cm");
println converted
```
## Output
```plain
1.0 m
100.0 cm
```
