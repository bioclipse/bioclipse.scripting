# Core functionality

The core functionality of Bioclipse is provided by a set of managers which are part
of the default Bioclipse distribution. This includes the `bioclipse`,
`js`, `ui`, and `gist` managers.

## The `bioclipse` manager

One core manager is the `bioclipse` manager. 

### Project and file management

The `bioclipse` manager has, for example,
functionality to convert Eclipse-style paths, based on projects to full
operating system-style paths, which you may need in the scripting language. For
example, given a project in Bioclipse called ``WikiPathways`` with a folder
called ``data'', I can get the full path with:

```javascript
fullPath = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
)
```

This full path I can then use with, for example, the Java
`File` class from JavaScript and Groovy. For example,
I am using Groovy in this set up:

```groovy
dataMap = bioclipse.fullPath(
  "/WikiPathways/data/" + species + "/"
);
gpmlFiles = new File(dataMap).listFiles()
```
