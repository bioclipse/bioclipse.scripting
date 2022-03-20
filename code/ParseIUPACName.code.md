# ParseIUPACName.py
## Source code
The source code may use or refer to content in a local workspace. This
Bioclipse workspace used can be found
[on GitHub](https://github.com/bioclipse/bioclipse.scripting/tree/master/ws/).
### Bioclipse 2.6
```python
mol = opsin.parseIUPACName(
  "Ethyl [(1R,3aR,4aR,6R,8aR,9S,9aS)-9-" +
  "{(E)-2-[5-(3-fluorophenyl)-2-pyridinyl]vinyl}-" +
  "1-methyl-3-oxododecahydronaphtho[2,3-c]furan-" +
  "6-yl]carbamate"
)
print(mol)
```
### Bacting
To run this code, you first need to install
[Bacting](https://github.com/egonw/bacting) (Groovy) or
[pyBacting](https://pypi.org/project/pybacting/) (Python).
<br />
```python
from pybacting import opsin

mol = opsin.parseIUPACName(
  "Ethyl [(1R,3aR,4aR,6R,8aR,9S,9aS)-9-" +
  "{(E)-2-[5-(3-fluorophenyl)-2-pyridinyl]vinyl}-" +
  "1-methyl-3-oxododecahydronaphtho[2,3-c]furan-" +
  "6-yl]carbamate"
)
print(mol)
```
[Open in Google Colab](https://colab.research.google.com/github/bioclipse/bioclipse.scripting/blob/master/nb/ParseIUPACName.ipynb)
## Output
```plain
CDKMolecule:C29H33FN2O4
```
