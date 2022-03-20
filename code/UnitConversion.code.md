# UnitConversion.py
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```python
quantity = qudt.newQuantity(1.0, "m")
print(quantity)
converted = qudt.convertTo(quantity, "cm");
print(converted)
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```python
from pybacting import qudt

quantity = qudt.newQuantity(1.0, "m")
print(quantity)
converted = qudt.convertTo(quantity, "cm");
print(converted)
```
[Open in Google Colab](https://colab.research.google.com/github/bioclipse/bioclipse.scripting/blob/master/nb/UnitConversion.ipynb)
## Output
```plain
1.0 m
100.0 cm
```
